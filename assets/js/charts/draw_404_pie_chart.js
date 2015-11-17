function draw404PieChart(dataset){

        var width = 400;
        var height = 200;
        var radius = Math.min(width, height) / 2;

        var color = d3.scale.category20b();

        var tip = d3.tip()
        .attr('class', 'd3-tip')
        .offset([-10, 0])
        .html(function(d) {
            return "<strong>INFO : </strong> <span style='color:red'>" + d.name + ":"+d.value+"</span>";
        })

        d3.select("#request_404_chart").remove();


        var svg = d3.select('#chart')
          .append('svg')
          .attr("id","request_404_chart")
          .attr('width', width)
          .attr('height', height)
          .append('g')
          .attr('transform', 'translate(' + (width/2 ) + 
            ',' + (height / 2) + ')');

        var arc = d3.svg.arc()
          .outerRadius(radius);

        var pie = d3.layout.pie()
          .value(function(d) { return d.value; })
          .sort(null);

        svg.call(tip); 

        var path = svg.selectAll('path')
          .data(pie(dataset))
          .enter()
          .append('path')
          .attr('d', arc)
          .attr('fill', function(d, i) { 
            return color(d.data.name);
          })
          .on('mouseover',tip.show)
          .on('mouseout',tip.hide);
}