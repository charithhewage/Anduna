function drawProxylogBandwidthChart(dataset){

    var margin = {top: 5, right: 10, bottom: 10, left: 5},
        width = 400 - margin.left - margin.right,
        height = 250 - margin.top - margin.bottom;

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
            return "<strong>INFO : </strong> <span style='color:red'>Date:" + d.date + " Hits :"+d.data+"</span>";
        })


    //when new data comes remove existing svg bar chart
    d3.select("#banBar").remove();
    //d3.select("#the_SVG_ID").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#proxyDetailsChart").append('svg')
        .attr("id","banBar")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    

    chart.call(tip);

    x.domain(dataset.map(function(d) { return d.date; }));
    y.domain([0, d3.max(dataset, function(d) { return d.data; })]);

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
        .attr("y", function(d) { return y(d.data); })
        .attr("height", function(d) { return height - y(d.data); })
        .attr("width", x.rangeBand())
        .style('fill', 'steelblue')
        .on('mouseover',tip.show)
        .on('mouseout',tip.hide);

};

function drawAccesslogBandwidthChart(dataset){

    var margin = {top: 5, right: 10, bottom: 10, left: 5},
        width = 400 - margin.left - margin.right,
        height = 250 - margin.top - margin.bottom;

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
            return "<strong>INFO : </strong> <span style='color:red'>Date:" + d.date + " Hits :"+d.data+"</span>";
        })


    //when new data comes remove existing svg bar chart
    d3.select("#banBar").remove();
    //d3.select("#the_SVG_ID").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#accessDetailsChart").append('svg')
        .attr("id","banBar")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    

    chart.call(tip);

    x.domain(dataset.map(function(d) { return d.date; }));
    y.domain([0, d3.max(dataset, function(d) { return d.data; })]);

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
        .attr("y", function(d) { return y(d.data); })
        .attr("height", function(d) { return height - y(d.data); })
        .attr("width", x.rangeBand())
        .style('fill', 'steelblue')
        .on('mouseover',tip.show)
        .on('mouseout',tip.hide);

};

function drawHighestBandSitesChart(dataset){

        console.log("draw high data sites");
        console.log(dataset);
        
        var width = 400;
        var height = 250;
        var radius = Math.min(width, height) / 2;

        var color = d3.scale.category20b();

        var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<strong>INFO : </strong> <span style='color:red'>" + d.data.url + ":"+d.data.dataAccess+"</span>";
        })

        d3.select("#ipPie").remove();


        var svg = d3.select('#heighestDataAccessSites')
          .append('svg')
          .attr("id","ipPie")
          .attr('width', width)
          .attr('height', height)
          .append('g')
          .attr('transform', 'translate(' + (width/2 ) + 
            ',' + (height / 2) + ')');

        var arc = d3.svg.arc()
          .outerRadius(radius);

        var pie = d3.layout.pie()
          .value(function(d) { return d.dataAccess; })
          .sort(null);

        svg.call(tip); 

        var path = svg.selectAll('path')
          .data(pie(dataset))
          .enter()
          .append('path')
          .attr('d', arc)
          .attr('fill', function(d, i) { 
            return color(d.data.url);
          })
          .on('mouseover',tip.show)
          .on('mouseout',tip.hide);
};

function drawHighestBandIpsChart(dataset){

            console.log("draw high data ips");
        console.log(dataset);
        
        var width = 400;
        var height = 250;
        var radius = Math.min(width, height) / 2;

        var color = d3.scale.category20b();

        var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<strong>INFO : </strong> <span style='color:red'>" + d.data.url + ":"+d.data.dataAccess+"</span>";
        })

        d3.select("#ipPie").remove();


        var svg = d3.select('#heighestDataAccessIps')
          .append('svg')
          .attr("id","ipPie")
          .attr('width', width)
          .attr('height', height)
          .append('g')
          .attr('transform', 'translate(' + (width/2 ) + 
            ',' + (height / 2) + ')');

        var arc = d3.svg.arc()
          .outerRadius(radius);

        var pie = d3.layout.pie()
          .value(function(d) { return d.dataAccess; })
          .sort(null);

        svg.call(tip); 

        var path = svg.selectAll('path')
          .data(pie(dataset))
          .enter()
          .append('path')
          .attr('d', arc)
          .attr('fill', function(d, i) { 
            return color(d.data.url);
          })
          .on('mouseover',tip.show)
          .on('mouseout',tip.hide);
};
