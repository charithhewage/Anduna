function drawTodayHitsChart(dataset){


     var tempWidth = document.getElementById('headChartHits').clientWidth - parseInt('40px', 10), 
        tempheight = document.getElementById('headChartHits').clientHeight - parseInt('20px', 10);

   
    var margin = {top: 35, right: 20, bottom: 25, left: 30},
        width = tempWidth - margin.left - margin.right ,
        height = tempheight - margin.top - margin.bottom ;


    var x = d3.scale.ordinal()
        .rangeRoundBands([0, width], .1);

    var y = d3.scale.linear()
        .range([height, 0]);

    var xAxis = d3.svg.axis()
        .scale(x)
        .orient("bottom");

    var yAxis = d3.svg.axis()
        .scale(y)
        .orient("left");

    //tip to show when mouseover
    var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<div style=' height:25px; width:145px; border-radius: 2px; background-color: #302929; padding-left: 8px; padding-top: 3px;'><strong style='color:white;'>Requests&nbsp;:&nbsp;</strong><span style='color:red;'>" + d.requests+ "</span></div>";
        });


    //when new data comes remove existing svg bar chart
    var chart = d3.select("#visitsBar").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#ChartHits").append('svg')
        .attr("id","visitsBar")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")")
        .style({'font-size': '10px', 'font-family': 'sans-serif',
            'font-style': 'normal', 'font-variant': 'normal', 
            'font-weight': 'normal'});


    chart.call(tip);
    //chart.call(modal);

    x.domain(dataset.map(function(d) { return d.date; }));
    y.domain([0, d3.max(dataset, function(d) { return d.requests; })]);

    //chart title
    chart.append("text")
        .attr("x", (width / 2))             
        .attr("y", 0 - (margin.top / 2))
        .attr("text-anchor", "middle")  
        .style("font-size", "16px") 
        .style("text-decoration", "underline")  
        .text("Access log requests based on date and month");

    //chart x axis
    chart.append("g")
        .attr("class", "x axis")
        .call(xAxis)
        .attr("transform", "translate(0," + height + ")")
        .style({ 'stroke': '#464646', 'fill': 'none', 'stroke-width': '1px'})
      .append("text")
        .attr("transform", "translate("+(width + parseInt('10px', 10))+")rotate(90)")
        .attr("y", 0)
        .attr("x", 0)
        .style("text-anchor", "start")
        .text("Date");

        //chart y axis
    chart.append("g")
        .attr("class", "y axis")
        .call(yAxis)
        .style({ 'stroke': '#464646', 'fill': 'none', 'stroke-width': '1px'})
      .append("text")
        .attr("transform", "rotate(-90)")
        .attr("y", 0)
        .attr("x", 6)
        .style("text-anchor", "start")
        .text("Requests");

    chart.selectAll(".bar")
        .data(dataset)
        .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.date); })
        .attr("y", function(d) { return y(d.requests); })
        .attr("height", function(d) { return height - y(d.requests); })
        .attr("width", x.rangeBand())
        .style('fill', '#4682B4')
        .style('opacity','.8')
        .on('mouseover', function(d) {           
            tip.show(d);
            d3.select(this).style("fill", "#CA3A3A")
             d3.select(this).style('opacity','1');
        })  
        .on("mouseout", function(d) {
              d3.select(this).style("fill", "#4682B4")
              d3.select(this).style('opacity','.8');
              tip.hide(d);
        })

};

function drawTodayUniqHitsChart(dataset){

     var tempWidth = document.getElementById('headChartUnique').clientWidth - parseInt('40px', 10), 
        tempheight = document.getElementById('headChartUnique').clientHeight - parseInt('20px', 10);

   
    var margin = {top: 35, right: 20, bottom: 25, left: 30},
        width = tempWidth - margin.left - margin.right ,
        height = tempheight - margin.top - margin.bottom ;


    var x = d3.scale.ordinal()
        .rangeRoundBands([0, width], .1);

    var y = d3.scale.linear()
        .range([height, 0]);

    var xAxis = d3.svg.axis()
        .scale(x)
        .orient("bottom");

    var yAxis = d3.svg.axis()
        .scale(y)
        .orient("left");

    //tip to show when mouseover
    var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<div style=' height:25px; width:145px; border-radius: 2px; background-color: #302929; padding-left: 8px; padding-top: 3px;'><strong style='color:white;'>Users&nbsp;:&nbsp;</strong><span style='color:red;'>" + d.visits+ "</span></div>";
        });


    //when new data comes remove existing svg bar chart
    var chart = d3.select("#visitsBar").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#ChartUnique").append('svg')
        .attr("id","visitsBar")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")")
        .style({'font-size': '10px', 'font-family': 'sans-serif',
            'font-style': 'normal', 'font-variant': 'normal', 
            'font-weight': 'normal'});


    chart.call(tip);
    //chart.call(modal);

    x.domain(dataset.map(function(d) { return d.date; }));
    y.domain([0, d3.max(dataset, function(d) { return d.visits; })]);

    //chart title
    chart.append("text")
        .attr("x", (width / 2))             
        .attr("y", 0 - (margin.top / 2))
        .attr("text-anchor", "middle")  
        .style("font-size", "16px") 
        .style("text-decoration", "underline")  
        .text("Access log Users based on date and month");

    //chart x axis
    chart.append("g")
        .attr("class", "x axis")
        .call(xAxis)
        .attr("transform", "translate(0," + height + ")")
        .style({ 'stroke': '#464646', 'fill': 'none', 'stroke-width': '1px'})
      .append("text")
        .attr("transform", "translate("+(width + parseInt('10px', 10))+")rotate(90)")
        .attr("y", 0)
        .attr("x", 0)
        .style("text-anchor", "start")
        .text("Date");

        //chart y axis
    chart.append("g")
        .attr("class", "y axis")
        .call(yAxis)
        .style({ 'stroke': '#464646', 'fill': 'none', 'stroke-width': '1px'})
      .append("text")
        .attr("transform", "rotate(-90)")
        .attr("y", 0)
        .attr("x", 6)
        .style("text-anchor", "start")
        .text("Users");

    chart.selectAll(".bar")
        .data(dataset)
        .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.date); })
        .attr("y", function(d) { return y(d.visits); })
        .attr("height", function(d) { return height - y(d.visits); })
        .attr("width", x.rangeBand())
        .style('fill', '#4682B4')
        .style('opacity','.8')
        .on('mouseover', function(d) {           
            tip.show(d);
            d3.select(this).style("fill", "#CA3A3A")
             d3.select(this).style('opacity','1');
        })  
        .on("mouseout", function(d) {
              d3.select(this).style("fill", "#4682B4")
              d3.select(this).style('opacity','.8');
              tip.hide(d);
        })

};

function drawHighestAccessedIps(dataset){

      

        var tempWidth = document.getElementById('headChartheighestAccessed').clientWidth - parseInt('10px', 10), 
        tempheight = document.getElementById('headChartheighestAccessed').clientHeight - parseInt('10px', 10);


       var margin = {top: 40, right: 15, bottom: 15, left: 40},
        width = tempWidth - margin.left - margin.right ,
        height = tempheight - margin.top - margin.bottom ;
        var radius = Math.min(width-30, height-30) / 2;

        var color = d3.scale.category20b();

        var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<div style=' height:25px; width:145px; border-radius: 2px; background-color: #302929; padding-left: 8px; padding-top: 3px;'><strong style='color:white;'>Requests&nbsp;:&nbsp;</strong><span style='color:red;'>" + d.data.count + "</span></div>";
        });

        d3.select("#piechart").remove();


        var chart = d3.select('#ChartheighestAccessed')
          .append('svg')
          .attr("id","piechart")
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
            .style("font-size", "10px") 
            .style("text-decoration", "underline")  
            .text("Top 5 IP Addresses with high requests");



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
          .value(function(d) { return d.count; })
          .sort(null);

        chart.call(tip); 


        var path = chart.selectAll('path')
          .data(pie(dataset))
          .enter()
          .append('path')
          .attr('d', arc)
          .attr('fill', function(d, i) { 
            return color(d.data.ip);
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


              var text = chart.select(".labels").selectAll("text")
                .data(pie(dataset));

              text.enter()
                .append("text")
                .attr("dy", ".35em")
                .text(function(d) {
                  return d.data.ip;
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
};

function drawFailedHitsChart(dataset){


 var tempWidth = 400, 
        tempheight = 250;

   
    var margin = {top: 35, right: 20, bottom: 25, left: 30},
        width = tempWidth - margin.left - margin.right ,
        height = tempheight - margin.top - margin.bottom ;


    var x = d3.scale.ordinal()
        .rangeRoundBands([0, width], .1);

    var y = d3.scale.linear()
        .range([height, 0]);

    var xAxis = d3.svg.axis()
        .scale(x)
        .orient("bottom");

    var yAxis = d3.svg.axis()
        .scale(y)
        .orient("left");

    //tip to show when mouseover
    var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<div style=' height:25px; width:145px; border-radius: 2px; background-color: #302929; padding-left: 8px; padding-top: 3px;'><strong style='color:white;'>FailedRequests&nbsp;:&nbsp;</strong><span style='color:red;'>" + d.failedVisits+ "</span></div>";
        });


    //when new data comes remove existing svg bar chart
    var chart = d3.select("#visitsBar").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#ChartFailedHits").append('svg')
        .attr("id","visitsBar")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")")
        .style({'font-size': '10px', 'font-family': 'sans-serif',
            'font-style': 'normal', 'font-variant': 'normal', 
            'font-weight': 'normal'});


    chart.call(tip);
    //chart.call(modal);

    x.domain(dataset.map(function(d) { return d.date; }));
    y.domain([0, d3.max(dataset, function(d) { return d.failedVisits; })]);

    //chart title
    chart.append("text")
        .attr("x", (width / 2))             
        .attr("y", 0 - (margin.top / 2))
        .attr("text-anchor", "middle")  
        .style("font-size", "16px") 
        .style("text-decoration", "underline")  
        .text("Proxy log failed requests based on date and month");

    //chart x axis
    chart.append("g")
        .attr("class", "x axis")
        .call(xAxis)
        .attr("transform", "translate(0," + height + ")")
        .style({ 'stroke': '#464646', 'fill': 'none', 'stroke-width': '1px'})
      .append("text")
        .attr("transform", "translate("+(width + parseInt('10px', 10))+")rotate(90)")
        .attr("y", 0)
        .attr("x", 0)
        .style("text-anchor", "start")
        .text("Date");

        //chart y axis
    chart.append("g")
        .attr("class", "y axis")
        .call(yAxis)
        .style({ 'stroke': '#464646', 'fill': 'none', 'stroke-width': '1px'})
      .append("text")
        .attr("transform", "rotate(-90)")
        .attr("y", 0)
        .attr("x", 6)
        .style("text-anchor", "start")
        .text("Requests");

    chart.selectAll(".bar")
        .data(dataset)
        .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.date); })
        .attr("y", function(d) { return y(d.failedVisits); })
        .attr("height", function(d) { return height - y(d.failedVisits); })
        .attr("width", x.rangeBand())
        .style('fill', '#4682B4')
        .style('opacity','.8')
        .on('mouseover', function(d) {           
            tip.show(d);
            d3.select(this).style("fill", "#CA3A3A")
             d3.select(this).style('opacity','1');
        })  
        .on("mouseout", function(d) {
              d3.select(this).style("fill", "#4682B4")
              d3.select(this).style('opacity','.8');
              tip.hide(d);
        })
    

};


function type(d) {
    d.value = +d.value; // coerce to number
    return d;
}