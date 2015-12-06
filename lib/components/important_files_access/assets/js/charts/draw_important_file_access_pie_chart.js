function drawImportantFileAccessPieChart(dataset){

  var tempWidth = document.getElementById('importnat_file_access_div').clientWidth - parseInt('10px', 10), 
        tempheight = document.getElementById('importnat_file_access_div').clientHeight - parseInt('10px', 10);

       $("#important_file_access_table").children().empty()

       var margin = {top: 40, right: 15, bottom: 15, left: 40},
        width = tempWidth - margin.left - margin.right ,
        height = tempheight - margin.top - margin.bottom ;
        var radius = Math.min(width -80, height - 80) / 2;

        var color = d3.scale.category20b();

        var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<div style=' height:25px; width:145px; border-radius: 2px; background-color: #302929; padding-left: 8px; padding-top: 3px;'><strong style='color:white;'>IP&nbsp;:&nbsp;</strong><span style='color:red;'>" + d.data.name + "</span></div>";
        });

        d3.select("#important_file_access_chart").remove();


        var chart = d3.select('#chart_for_imp_file_access')
          .append('svg')
          .attr("id","important_file_access_chart")
          .attr('width', width)
          .attr('height', height)
          .append('g')
          .attr('transform', 'translate(' + (width/2 ) + 
            ',' + (height / 2) + ')');

                //chart title
        chart.append("text")
            .attr("x", 0)             
            .attr("y", 0 -radius*11/10)
            .attr("text-anchor", "middle")  
            .style("font-size", "16px") 
            .style("text-decoration", "underline")  
            .text("Access Count based on IP");



          chart.append("g")
            .attr("class", "slices");
          chart.append('g')
            .attr("class", "labels");
          chart.append('g')
            .attr("class", "lines");

            // basic chart radius
        var arc = d3.svg.arc()
          .innerRadius(radius- radius/2)
          .outerRadius(radius)


          //outer chart to append lables
          var outerArc = d3.svg.arc()
            .innerRadius(radius * 0.9)
            .outerRadius(radius * 0.9);


          // change chart when mouseover
        var arcOver = d3.svg.arc()
          .innerRadius(radius - radius/3)
          .outerRadius(radius + radius/6);

        var pie = d3.layout.pie()
          .value(function(d) { return d.value; })
          .sort(null);

        chart.call(tip); 


        var path = chart.selectAll('path')
          .data(pie(dataset))
          .enter()
          .append('path')
          .attr('d', arc)
          .attr('fill', function(d, i) { 
            return color(d.data.name);
          })
          .on('mouseover', function(d) {           
                    tip.show(d);
                    d3.select(this).transition()
                        .duration(400)
                        .attr("d", arcOver)
                        d3.select(this).style("opacity", "1");
                    //d3.select(this).style("fill", "#CA3A3A");
                  })  
          .on('mouseout', function(d) {
                       // d3.select(this).style("fill", "#4682B4");
                        tip.hide(d);
                        d3.select(this).transition()
                            .duration(400)
                            .attr("d", arc)
                            d3.select(this).style("opacity", ".8");
                  }) 

          .on("click", function(d){ 

            $("#importnat_file_access_modal").modal();
            //d3.select(this).style("fill", "#CA3A3A");
            $("#importnat_file_access_modal_content .clientIp").html("<td><h4><strong>Ip Address&nbsp;&nbsp;</strong></h4></td><td><h4>:&nbsp;&nbsp;</h4></td><td><h4 id='para'>"+d.data.name+"</h4></td>");
            $("#importnat_file_access_modal_content .count").html("<td><p><strong>Access Count&nbsp;&nbsp;</strong></p></td><td><p>:&nbsp;&nbsp;</p></td><td><p>"+d.data.value+"</p></td>");
            $("#importnat_file_access_modal_content .size").html("<td><strong>Request Data Size&nbsp;&nbsp;</strong></p></td><td><p>:&nbsp;&nbsp;</p></td><td><p>"+d.data.req_size+"</p></td>");

            var info1=d.data.browser_info.split('/');//split the string
            var browser=info1[0];//get the browser name
            var info2=info1[1].split('(');
            var info3=info2[1].split(')');
            var os=info3[0];//get the operating system


            $("#importnat_file_access_modal_content .browser").html("<td><p><strong>Browser&nbsp;&nbsp;</strong></p></td><td><p>:&nbsp;&nbsp;</p></td><td><p>"+browser+"</p></td>");
            $("#importnat_file_access_modal_content .os").html("<td><p><strong>Operating System&nbsp;&nbsp;</strong></p></td><td><p>:&nbsp;&nbsp;</p></td><td><p>"+os+"</p></td>");
            //$('#info_div').modal('show');
            //$('#myModal').modal('hide');

         });



              /* ------- PIE SLICES -------*/
              // var slice = chart.select(".slices").selectAll("path.slice")
              //   .data(pie(dataset));

              // slice.enter()
              //   .insert("path")
              //   .style("fill", function(d) { return color(d.data.name); })
              //   .attr("class", "slice");

              // slice   
              //   .transition().duration(1000)
              //   .attrTween("d", function(d) {
              //     this._current = this._current || d;
              //     var interpolate = d3.interpolate(this._current, d);
              //     this._current = interpolate(0);
              //     return function(t) {
              //       return arc(interpolate(t));
              //     };
              //   })

              // slice.exit()
              //   .remove();

              /* ------- TEXT LABELS -------*/

              var text = chart.select(".labels").selectAll("text")
                .data(pie(dataset));

              text.enter()
                .append("text")
                .attr("dy", ".35em")
                .text(function(d) {
                  return d.data.name;
                });
              
              function midAngle(d){
                return d.startAngle + (d.endAngle - d.startAngle)/2;
              }

              text.transition().duration(1000)
                .attrTween("transform", function(d) {
                  this._current = this._current || d;
                  var interpolate = d3.interpolate(this._current, d);
                  this._current = interpolate(0);
                  return function(t) {
                    var d2 = interpolate(t);
                    var pos = outerArc.centroid(d2);
                    pos[0] = radius * (midAngle(d2) < Math.PI ? 1 : -1);
                    return "translate("+ pos +")";
                  };
                })
                .styleTween("text-anchor", function(d){
                  this._current = this._current || d;
                  var interpolate = d3.interpolate(this._current, d);
                  this._current = interpolate(0);
                  return function(t) {
                    var d2 = interpolate(t);
                    return midAngle(d2) < Math.PI ? "start":"end";
                  };
                });

              text.exit()
                .remove();

              /* ------- SLICE TO TEXT POLYLINES -------*/

              var polyline = chart.select(".lines").selectAll("polyline")
                .data(pie(dataset));
              
              polyline.enter()
                .append("polyline");

              polyline.transition().duration(1000)
                .attrTween("points", function(d){
                  this._current = this._current || d;
                  var interpolate = d3.interpolate(this._current, d);
                  this._current = interpolate(0);
                  return function(t) {
                    var d2 = interpolate(t);
                    var pos = outerArc.centroid(d2);
                    pos[0] = radius * 0.95 * (midAngle(d2) < Math.PI ? 1 : -1);
                    return [arc.centroid(d2), outerArc.centroid(d2), pos];
                  };      
                });
              
              polyline.exit()
                .remove();
              

}
