function drawTodayVisitsPieChart(){

	$.getJSON("lib/components/proxy_log_visits/controllers/proxy_log_visits.jag" , function (response){
        console.log("show_today_visits");

        var dataset = [];

        $.each(response, function (key, val){

          dataset.push({date : val.accessDate,visits : val.totalRequests});

        });
        var width = 220;
        var height = 108;
        var radius = Math.min(width, height) / 2;

        var color = d3.scale.category20b();

        var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<strong>INFO : </strong> <span style='color:red'>" + d.date + ":"+d.visits+"</span>";
        })

        d3.select("#visitsBar").remove();


        var svg = d3.select('#visitsChart')
          .append('svg')
          .attr("id","visitsBar")
          .attr('width', width)
          .attr('height', height)
          .append('g')
          .attr('transform', 'translate(' + (width/2 ) + 
            ',' + (height / 2) + ')');

        var arc = d3.svg.arc()
          .outerRadius(radius);

        var pie = d3.layout.pie()
          .value(function(d) { return d.visits; })
          .sort(null);

        svg.call(tip); 

        var path = svg.selectAll('path')
          .data(pie(dataset))
          .enter()
          .append('path')
          .attr('d', arc)
          .attr('fill', function(d, i) { 
            return color(d.data.date);
          })
          .on('mouseover',tip.show)
          .on('mouseout',tip.hide);
    });
}
