function drawImportantFileAccessBarChart(dataset){

    

    var tempWidth = document.getElementById('elem').clientWidth - parseInt('40px', 10), 
        tempheight = document.getElementById('elem').clientHeight - parseInt('60px', 10);

    

    var margin = {top: 15, right: 20, bottom: 25, left: 30},
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
            return "<div style=' height:25px; width:145px; border-radius: 2px; background-color: #302929; padding-left: 8px; padding-top: 3px;'><strong style='color:white;'>IP&nbsp;:&nbsp;</strong><span style='color:red;'>" + d.name + ":"+d.value+"</span></div>";
        })

        //modal to show info
    // var modal = d3.select("#elem")
    //     .append("div")
    //     .style("position", "absolute")
    //     .style("z-index", "10")
    //     .style("visibility", "hidden")
    //     .text("a simple tooltip");


    //when new data comes remove existing svg bar chart
    var chart = d3.select("#important_file_access_chart").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#chart2").append('svg')
        .attr("id","important_file_access_chart")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")")
        .style({'font-size': '10px', 'font-family': 'sans-serif',
            'font-style': 'normal', 'font-variant': 'normal', 
            'font-weight': 'normal'});


    chart.call(tip);

    x.domain(dataset.map(function(d) { return d.name; }));
    y.domain([0, d3.max(dataset, function(d) { return d.value; })]);

    chart.append("g")
        .attr("class", "x axis")
        .call(xAxis)
        .attr("transform", "translate(0," + height + ")")
        .style({ 'stroke': '#464646', 'fill': 'none', 'stroke-width': '1px'})
      .append("text")
        .attr("transform", "translate("+(width + parseInt('10px', 10))+")rotate(0)")
        .attr("y", -10)
        .attr("dy", ".71em")
        .style("text-anchor", "end")
        .text("IP");

    chart.append("g")
        .attr("class", "y axis")
        .call(yAxis)
        .style({ 'stroke': '#464646', 'fill': 'none', 'stroke-width': '1px'})
      .append("text")
        .attr("transform", "rotate(-90)")
        .attr("y", 6)
        .attr("dy", ".71em")
        .style("text-anchor", "end")
        .text("Count");

    chart.selectAll(".bar")
        .data(dataset)
        .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.name); })
        .attr("y", function(d) { return y(d.value); })
        .attr("height", function(d) { return height - y(d.value); })
        .attr("width", x.rangeBand())
        .style('fill', '#4682B4')
        .on('mouseover', function(d) {           
            tip.show(d);
            d3.select(this).style("fill", "#CA3A3A");
            
            //tool_tipthis.call(tip);
        })  
        //.on('mouseover',tip.show)
        .on("mouseout", function(d) {
              d3.select(this).style("fill", "#4682B4");
              tip.hide(d);
            }) ;
        // .on("click", function(){return modal.style("visibility", "visible");})



};

function resize() {


    var tempWidth = document.getElementById('elem').clientWidth - parseInt('40px', 10), 
        tempheight = document.getElementById('elem').clientHeight - parseInt('40px', 10);

    

    var margin = {top: 15, right: 50, bottom: 15, left: 30},
        width = tempWidth - margin.left - margin.right ,
        height = tempheight - margin.top - margin.bottom ;


    // update width
    width = parseInt(d3.select('#chart').style('width'), 10);
    width = width - margin.left - margin.right;

    // reset x range
    x.range([0, width]);
    y.range([height, 0]);

    // do the actual resize...
}  

d3.select('#elem').on('resize', resize); 

function type(d) {
    d.value = +d.value; // coerce to number
    return d;
}

