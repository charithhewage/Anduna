function drawTodayVisitsChart(dataset){

    // var margin = {top: 5, right: 10, bottom: 10, left: 5},
    //     width = 220 - margin.left - margin.right,
    //     height = 108 - margin.top - margin.bottom;

    // var x = d3.scale.ordinal()
    //     .rangeRoundBands([0, width], .1);

    // var y = d3.scale.linear()
    //     .range([height, 0]);

    // var xAxis = d3.svg.axis()
    //     .scale(x)
    //     .orient("bottom");

    // var yAxis = d3.svg.axis()
    //     .scale(y)
    //     .orient("left");

    // var tip = d3.tip()
    //     .attr('class', 'd3-tip')
    //     .offset([-10, 0])
    //     .html(function(d) {
    //         return "<strong>INFO : </strong> <span style='color:red'>Date:" + d.date + " Visits :"+d.requests+"</span>";
    //     })


    // //when new data comes remove existing svg bar chart
    // d3.select("#visitsBar").remove();
    // //d3.select("#the_SVG_ID").remove();

    // //var chart = d3.select(".chart")
    // var chart = d3.select("#visitsChart").append('svg')
    //     .attr("id","visitsBar")// id for svg chart
    //     .attr("width", width + margin.left + margin.right)
    //     .attr("height", height + margin.top + margin.bottom)
    //     .append("g")
    //     .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    

    // chart.call(tip);

    // x.domain(dataset.map(function(d) { return d.date; }));
    // y.domain([0, d3.max(dataset, function(d) { return d.visits; })]);

    // chart.append("g")
    //     .attr("class", "x axis")
    //     .attr("transform", "translate(0," + height + ")")
    //     .call(xAxis);

    // chart.append("g")
    //     .attr("class", "y axis")
    //     .call(yAxis)
    //     .append("text")
    //     .attr("y", 6)
    //     .attr("dy", ".71em")
    //     .style("text-anchor", "end")
    //     .text("Total Visits");;

    // chart.selectAll(".bar")
    //     .data(dataset)
    //     .enter().append("rect")
    //     .attr("class", "bar")
    //     .attr("x", function(d) { return x(d.date); })
    //     .attr("y", function(d) { return y(d.visits); })
    //     .attr("height", function(d) { return height - y(d.visits); })
    //     .attr("width", x.rangeBand())
    //     .style('fill', 'steelblue')
    //     .on('mouseover',tip.show)
    //     .on('mouseout',tip.hide);

 var n = 2, // number of samples
    m = 5; // number of series

var data = d3.range(m).map(function() { return d3.range(n).map(Math.random); });
console.log(d3.range(m));
console.log(dataset);
console.log(data);

var margin = {top: 20, right: 30, bottom: 30, left: 40},
    width = $("#ChartToday").width() - margin.left - margin.right,
    height = 300 - margin.top - margin.bottom;

var y = d3.scale.linear()
    .domain([0, 1])
    .range([height, 0]);

var x0 = d3.scale.ordinal()
    .domain(['Today', 'Yesterday'])
    .rangeBands([0, width], .2);

var x1 = d3.scale.ordinal()
    .domain(d3.range(m))
    .rangeBands([0, x0.rangeBand()]);

var z = d3.scale.category10();

var xAxis = d3.svg.axis()
    .scale(x0)
    .orient("bottom");

var yAxis = d3.svg.axis()
    .scale(y)
    .orient("left");

var svg = d3.select("#ChartToday").append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("svg:g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

svg.append("g")
    .attr("class", "y axis")
    .call(yAxis);

svg.append("g")
    .attr("class", "x axis")
    .attr("transform", "translate(0," + height + ")")
    .call(xAxis);

svg.append("g").selectAll("g")
    .data(data)
  .enter().append("g")
    .style("fill", function(d, i) { return z(i); })
    .attr("transform", function(d, i) { return "translate(" + x1(i) + ",0)"; })
  .selectAll("rect")
    .data(function(d) { return d; })
  .enter().append("rect")
    .attr("width", x1.rangeBand())
    .attr("height", y)
    .attr("x", function(d, i) { return x0(i); })
    .attr("y", function(d) { return height - y(d); });


};

function drawTodayUniqVisitsChart(dataset){

    var margin = {top: 5, right: 10, bottom: 10, left: 5},
        width = 220 - margin.left - margin.right,
        height = 108 - margin.top - margin.bottom;

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

    var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<strong>INFO : </strong> <span style='color:red'>Date:" + d.date + "visits:"+d.visits+"</span>";
        })


    //when new data comes remove existing svg bar chart
    d3.select("#visitsBar").remove();
    //d3.select("#the_SVG_ID").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#visitsChart").append('svg')
        .attr("id","visitsBar")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    

    chart.call(tip);

    x.domain(dataset.map(function(d) { return d.date; }));
    y.domain([0, d3.max(dataset, function(d) { return d.visits; })]);

    chart.append("g")
        .attr("class", "x axis")
        .attr("transform", "translate(0," + height + ")")
        .call(xAxis);

    chart.append("g")
        .attr("class", "y axis")
        .call(yAxis)
        .append("text")
        .attr("y", 6)
        .attr("dy", ".71em")
        .style("text-anchor", "end")
        .text("Total Visits");;

    chart.selectAll(".bar")
        .data(dataset)
        .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.date); })
        .attr("y", function(d) { return y(d.visits); })
        .attr("height", function(d) { return height - y(d.visits); })
        .attr("width", x.rangeBand())
        .style('fill', 'steelblue')
        .on('mouseover',tip.show)
        .on('mouseout',tip.hide);

};

function drawTopSiteAccess(){


    var margin = {top: 5, right: 10, bottom: 10, left: 5},
        width = 220 - margin.left - margin.right,
        height = 108 - margin.top - margin.bottom;

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

    var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<strong>INFO : </strong> <span style='color:red'>Url :" + d.url + " Visits :"+d.visits+"</span>";
        })


    //when new data comes remove existing svg bar chart
    //d3.select("#visitsBar").remove();
    //d3.select("#the_SVG_ID").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#visitsChart").append('svg')
        .attr("id","visitsBar")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    

    chart.call(tip);

    x.domain(dataset.map(function(d) { return d.url; }));
    y.domain([0, d3.max(dataset, function(d) { return d.visits; })]);

    chart.append("g")
        .attr("class", "x axis")
        .attr("transform", "translate(0," + height + ")")
        .call(xAxis);

    chart.append("g")
        .attr("class", "y axis")
        .call(yAxis)
        .append("text")
        .attr("y", 6)
        .attr("dy", ".71em")
        .style("text-anchor", "end")
        .text("Total Visits");;

    chart.selectAll(".bar")
        .data(dataset)
        .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.url); })
        .attr("y", function(d) { return y(d.visits); })
        .attr("height", function(d) { return height - y(d.visits); })
        .attr("width", x.rangeBand())
        .style('fill', 'steelblue')
        .on('mouseover',tip.show)
        .on('mouseout',tip.hide);

    });
};

function drawFailedVisitsChart(dataset){

    var margin = {top: 5, right: 10, bottom: 10, left: 5},
        width = 220 - margin.left - margin.right,
        height = 108 - margin.top - margin.bottom;

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

    var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<strong>INFO : </strong> <span style='color:red'>Date:" + d.date + " Visits :"+d.failedVisits+"</span>";
        })


    //when new data comes remove existing svg bar chart
    d3.select("#visitsBar").remove();
    //d3.select("#the_SVG_ID").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#visitsChart").append('svg')
        .attr("id","visitsBar")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    

    chart.call(tip);

    x.domain(dataset.map(function(d) { return d.date; }));
    y.domain([0, d3.max(dataset, function(d) { return d.failedVisits; })]);

    chart.append("g")
        .attr("class", "x axis")
        .attr("transform", "translate(0," + height + ")")
        .call(xAxis);

    chart.append("g")
        .attr("class", "y axis")
        .call(yAxis)
        .append("text")
        .attr("y", 6)
        .attr("dy", ".71em")
        .style("text-anchor", "end")
        .text("Total Visits");;

    chart.selectAll(".bar")
        .data(dataset)
        .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.date); })
        .attr("y", function(d) { return y(d.failedVisits); })
        .attr("height", function(d) { return height - y(d.failedVisits); })
        .attr("width", x.rangeBand())
        .style('fill', 'steelblue')
        .on('mouseover',tip.show)
        .on('mouseout',tip.hide);

};

function drawSuccessVisitsChart(dataset){

    var margin = {top: 5, right: 10, bottom: 10, left: 5},
        width = 220 - margin.left - margin.right,
        height = 108 - margin.top - margin.bottom;

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

    var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<strong>INFO : </strong> <span style='color:red'>Date:" + d.date + " Visits :"+d.successVisits+"</span>";
        })


    //when new data comes remove existing svg bar chart
    d3.select("#visitsBar").remove();
    //d3.select("#the_SVG_ID").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#visitsChart").append('svg')
        .attr("id","visitsBar")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    

    chart.call(tip);

    x.domain(dataset.map(function(d) { return d.date; }));
    y.domain([0, d3.max(dataset, function(d) { return d.successVisits; })]);

    chart.append("g")
        .attr("class", "x axis")
        .attr("transform", "translate(0," + height + ")")
        .call(xAxis);

    chart.append("g")
        .attr("class", "y axis")
        .call(yAxis)
        .append("text")
        .attr("y", 6)
        .attr("dy", ".71em")
        .style("text-anchor", "end")
        .text("Total Visits");;

    chart.selectAll(".bar")
        .data(dataset)
        .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.date); })
        .attr("y", function(d) { return y(d.successVisits); })
        .attr("height", function(d) { return height - y(d.successVisits); })
        .attr("width", x.rangeBand())
        .style('fill', 'steelblue')
        .on('mouseover',tip.show)
        .on('mouseout',tip.hide);

};

function type(d) {
    d.value = +d.value; // coerce to number
    return d;
}