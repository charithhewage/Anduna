function drawImportantFileAccessBarChart(dataset){

    

    var tempWidth = document.getElementById('importnat_file_access_div').clientWidth - parseInt('40px', 10), 
        tempheight = document.getElementById('importnat_file_access_div').clientHeight - parseInt('60px', 10);

    $("#important_file_access_table").children().empty()


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
            return "<div style=' height:25px; width:145px; border-radius: 2px; background-color: #302929; padding-left: 8px; padding-top: 3px;'><strong style='color:white;'>IP&nbsp;:&nbsp;</strong><span style='color:red;'>" + d.name + "</span></div>";
        });

       


    //when new data comes remove existing svg bar chart
    var chart = d3.select("#important_file_access_chart").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#chart_for_imp_file_access").append('svg')
        .attr("id","important_file_access_chart")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")")
        .style({'font-size': '10px', 'font-family': 'sans-serif',
            'font-style': 'normal', 'font-variant': 'normal', 
            'font-weight': 'normal'});


    chart.call(tip);
    //chart.call(modal);

    x.domain(dataset.map(function(d) { return d.name; }));
    y.domain([0, d3.max(dataset, function(d) { return d.value; })]);

    //chart title
    chart.append("text")
        .attr("x", (width / 2))             
        .attr("y", 0 - (margin.top / 2))
        .attr("text-anchor", "middle")  
        .style("font-size", "16px") 
        .style("text-decoration", "underline")  
        .text("Access Count based on IP");

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
        .text("IP");

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
        .on("click", function(d){ 

            $("#importnat_file_access_modal").modal();
            //d3.select(this).style("fill", "#CA3A3A");
            $("#importnat_file_access_modal_content .clientIp").html("<td><h4><strong>Ip Address&nbsp;&nbsp;</strong></h4></td><td><h4>:&nbsp;&nbsp;</h4></td><td><h4 id='paramImportantFile'>"+d.name+"</h4></td>");
            $("#importnat_file_access_modal_content .count").html("<td><p><strong>Access Count&nbsp;&nbsp;</strong></p></td><td><p>:&nbsp;&nbsp;</p></td><td><p>"+d.value+"</p></td>");
            $("#importnat_file_access_modal_content .size").html("<td><strong>Request Data Size&nbsp;&nbsp;</strong></p></td><td><p>:&nbsp;&nbsp;</p></td><td><p>"+d.req_size+"</p></td>");

            var info1=d.browser_info.split('/');//split the string
            var browser=info1[0];//get the browser name
            var info2=info1[1].split('(');
            var info3=info2[1].split(')');
            var os=info3[0];//get the operating system


            $("#importnat_file_access_modal_content .browser").html("<td><p><strong>Browser&nbsp;&nbsp;</strong></p></td><td><p>:&nbsp;&nbsp;</p></td><td><p>"+browser+"</p></td>");
            $("#importnat_file_access_modal_content .os").html("<td><p><strong>Operating System&nbsp;&nbsp;</strong></p></td><td><p>:&nbsp;&nbsp;</p></td><td><p>"+os+"</p></td>");
            //$('#info_div').modal('show');
            //$('#myModal').modal('hide');

         });
        



};

// function showDiv(d)
//        {
//             d3.select("#info_div")
//                 .style("left", "20px")
//                 .style("top", "20px")
//                 .select("#value")
//                 .html(function(d) {
//             return "<div style=' height:25px; width:145px; border-radius: 2px; background-color: #302929; padding-left: 8px; padding-top: 3px;'><strong style='color:white;'>IP&nbsp;:&nbsp;</strong><span style='color:red;'>" + d.name + ":"+d.value+"</span></div>";
//         });
//                 //.text(d.infos.name_explo);
//                 console.log("inside function");


//             //Show the tooltip
//             d3.select("#info_div").classed("hidden", false);
//         }


function resize() {


    var tempWidth = document.getElementById('importnat_file_access_div').clientWidth - parseInt('40px', 10), 
        tempheight = document.getElementById('importnat_file_access_div').clientHeight - parseInt('40px', 10);

    

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

d3.select('#importnat_file_access_div').on('resize', resize); 

function type(d) {
    d.value = +d.value; // coerce to number
    return d;
}

