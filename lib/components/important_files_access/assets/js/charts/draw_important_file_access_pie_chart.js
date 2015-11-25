function drawImportantFileAccessPieChart(dataset){

  var tempWidth = document.getElementById('importnat_file_access_div').clientWidth - parseInt('20px', 10), 
        tempheight = document.getElementById('importnat_file_access_div').clientHeight - parseInt('10px', 10);

       var margin = {top: 40, right: 5, bottom: 5, left: 40},
        width = tempWidth - margin.left - margin.right ,
        height = tempheight - margin.top - margin.bottom ;
        var radius = Math.min(width -20, height - 20) / 2;

        var color = d3.scale.category20b();

        var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<div style=' height:25px; width:145px; border-radius: 2px; background-color: #302929; padding-left: 8px; padding-top: 3px;'><strong style='color:white;'>IP&nbsp;:&nbsp;</strong><span style='color:red;'>" + d.name + "</span></div>";
        });

        d3.select("#important_file_access_chart").remove();


        var svg = d3.select('#chart_for_imp_file_access')
          .append('svg')
          .attr("id","important_file_access_chart")
          .attr('width', width)
          .attr('height', height)
          .append('g')
          .attr('transform', 'translate(' + (width/2 ) + 
            ',' + (height / 2) + ')');

          
          svg.append('g')
            .attr("class", "labels");
          svg.append('g')
            .attr("class", "lines");

            // basic chart radius
        var arc = d3.svg.arc()
          .innerRadius(radius- radius/2)
          .outerRadius(radius);


          // change chart when mouseover
        var arcOver = d3.svg.arc()
          .innerRadius(radius - radius/3)
          .outerRadius(radius + 15);

        var pie = d3.layout.pie()
          .value(function(d) { return d.value; })
          .sort(null);

        svg.call(tip); 


       
        
        // function midAngle(d){
        //   return d.startAngle + (d.endAngle - d.startAngle)/2;
        // }

        // svg.append("text")
        // .attr("x", (width / 2))             
        // .attr("y", 0 - (margin.top / 2))
        // .attr("text-anchor", "middle")  
        // .style("font-size", "16px") 
        // .style("text-decoration", "underline")  
        // .text("Access Count based on IP");

        var path = svg.selectAll('path')
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
                        .attr("d", arcOver);
                    //d3.select(this).style("fill", "#CA3A3A");
                  })  
          .on('mouseout', function(d) {
                       // d3.select(this).style("fill", "#4682B4");
                        tip.hide(d);
                        d3.select(this).transition()
                            .duration(400)
                            .attr("d", arc);
                  }) 




             var text = svg.select(".labels").selectAll("text")
              .data(pie(dataset));

              text.enter()
                .append("text")
                .attr("dy", ".35em")
                .text(function(d) {
                  return d.data.name;
                });   


    //            // Add a legendLabel to each arc slice...
    // arcs.append("svg:text")
    //   .attr("transform", function(d) { //set the label's origin to the center of the arc
    //     //we have to make sure to set these before calling arc.centroid
    //     d.outerRadius = outerRadius + 10; // Set Outer Coordinate
    //     d.innerRadius = outerRadius + 15; // Set Inner Coordinate
    //     return "translate(" + arc.centroid(d) + ")";
    //   })
    //   .attr("text-anchor", "middle") //center the text on it's origin
    //   .style("fill", "Purple")
    //   .style("font", "bold 12px Arial")
    //   .text(function(d, i) { return dataSet[i].legendLabel; }); //get the label from our original data array




}
