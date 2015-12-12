function drawProxylogThreatChart(dataset){

   var tempWidth = document.getElementById('headproxyThreatsChart').clientWidth - parseInt('40px', 10), 
        tempheight = document.getElementById('headproxyThreatsChart').clientHeight - parseInt('20px', 10);

   
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
            return "<div style=' height:25px; width:145px; border-radius: 2px; background-color: #302929; padding-left: 8px; padding-top: 3px;'><strong style='color:white;'>Threats&nbsp;:&nbsp;</strong><span style='color:red;'>" + d.count+ "</span></div>";
        });


    //when new data comes remove existing svg bar chart
    var chart = d3.select("#visitsBar").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#proxyThreatsChart").append('svg')
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
    y.domain([0, d3.max(dataset, function(d) { return d.count; })]);

    //chart title
    chart.append("text")
        .attr("x", (width / 2))             
        .attr("y", 0 - (margin.top / 2))
        .attr("text-anchor", "middle")  
        .style("font-size", "16px") 
        .style("text-decoration", "underline")  
        .text("Proxy log threats based on date and month");

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
        .text("Threats");

    chart.selectAll(".bar")
        .data(dataset)
        .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.date); })
        .attr("y", function(d) { return y(d.count); })
        .attr("height", function(d) { return height - y(d.count); })
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
}

function drawAccesslogThreatChart(dataset){

	// console.log("inside  draw access log threats");
	// console.log(dataset);

 //    var margin = {top: 5, right: 10, bottom: 10, left: 5},
 //        width = 400 - margin.left - margin.right,
 //        height = 250 - margin.top - margin.bottom;

 //    var x = d3.scale.ordinal()
 //        .rangeRoundBands([0, width], .1);

 //    var y = d3.scale.linear()
 //        .range([height, 0]);

 //    var xAxis = d3.svg.axis()
 //        .scale(x)
 //        .orient("bottom");

 //    var yAxis = d3.svg.axis()
 //        .scale(y)
 //        .orient("left");

 //    var tip = d3.tip()
 //        .attr('class', 'd3-tip')
 //        .offset([-10, 0])
 //        .html(function(d) {
 //            return "<strong>INFO : </strong> <span style='color:red'>Date:" + d.date + " Threat Count :"+d.count+"</span>";
 //        })


 //    //when new data comes remove existing svg bar chart
 //    d3.select("#visitsBar").remove();
 //    //d3.select("#the_SVG_ID").remove();

 //    //var chart = d3.select(".chart")
 //    var chart = d3.select("#accessThreatsChart").append('svg')
 //        .attr("id","visitsBar")// id for svg chart
 //        .attr("width", width + margin.left + margin.right)
 //        .attr("height", height + margin.top + margin.bottom)
 //        .append("g")
 //        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    

 //    chart.call(tip);

 //    x.domain(dataset.map(function(d) { return d.date; }));
 //    y.domain([0, d3.max(dataset, function(d) { return d.count; })]);

 //    chart.append("g")
 //        .attr("class", "x axis")
 //        .attr("transform", "translate(0," + height + ")")
 //        .call(xAxis);

 //    chart.append("g")
 //        .attr("class", "y axis")
 //        .call(yAxis)
 //        .append("text")
 //        .attr("y", 6)
 //        .attr("dy", ".71em")
 //        .style("text-anchor", "end")
 //        .text("Total Visits");;

 //    chart.selectAll(".bar")
 //        .data(dataset)
 //        .enter().append("rect")
 //        .attr("class", "bar")
 //        .attr("x", function(d) { return x(d.date); })
 //        .attr("y", function(d) { return y(d.count); })
 //        .attr("height", function(d) { return height - y(d.count); })
 //        .attr("width", x.rangeBand())
 //        .style('fill', 'steelblue')
 //        .on('mouseover',tip.show)
 //        .on('mouseout',tip.hide);

  var tempWidth = document.getElementById('headaccessThreatsChart').clientWidth - parseInt('40px', 10), 
        tempheight = document.getElementById('headaccessThreatsChart').clientHeight - parseInt('20px', 10);

   
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
            return "<div style=' height:25px; width:145px; border-radius: 2px; background-color: #302929; padding-left: 8px; padding-top: 3px;'><strong style='color:white;'>Threats&nbsp;:&nbsp;</strong><span style='color:red;'>" + d.count+ "</span></div>";
        });


    //when new data comes remove existing svg bar chart
    var chart = d3.select("#visitsBar").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#accessThreatsChart").append('svg')
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
    y.domain([0, d3.max(dataset, function(d) { return d.count; })]);

    //chart title
    chart.append("text")
        .attr("x", (width / 2))             
        .attr("y", 0 - (margin.top / 2))
        .attr("text-anchor", "middle")  
        .style("font-size", "16px") 
        .style("text-decoration", "underline")  
        .text("Accesss log threats based on date and month");

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
        .text("Threats");

    chart.selectAll(".bar")
        .data(dataset)
        .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.date); })
        .attr("y", function(d) { return y(d.count); })
        .attr("height", function(d) { return height - y(d.count); })
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
}