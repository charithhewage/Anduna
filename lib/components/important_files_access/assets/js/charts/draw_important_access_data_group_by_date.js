function drawImportantFileAccessByDateLineChart(dataset){

  var tempWidth = document.getElementById('importnat_file_access_div').clientWidth - parseInt('10px', 10), 
        tempheight = document.getElementById('importnat_file_access_div').clientHeight - parseInt('10px', 10);

       $("#important_file_access_table").children().empty()
       
      // var data = [];                 
  // this is our data array
  var startingDate = new Date(2012, 8, 18);   
  // this is a date object. each of our data objects is attached to a date
  // for (var i = 0; i < 10; i++) {          
  // // loop 10 times to create 10 data objects
  //   var tmpObj  = {};             
  //     // this is a temporary data object
  //   tmpObj.date = new Date(startingDate.getFullYear(), startingDate.getMonth(), startingDate.getDate()+i);        
  //     // the data for this data object. Increment it from the starting date.
  //   tmpObj.DAU  = Math.round(Math.random() * 300);        
  //     // random value. Round it to a whole number.
  //   data.push(tmpObj);              
  //     // push the object into our data array
  // }
  var margin = {top: 40, right: 15, bottom: 15, left: 40},
        width = tempWidth - margin.left - margin.right ,
        height = tempheight - margin.top - margin.bottom ;

    var parseDate = d3.time.format("%d-%b-%y").parse;

          var x = d3.time.scale()
              .range([0, width]);

          var y = d3.scale.linear()
              .range([height, 0]);

          var xAxis = d3.svg.axis()
              .scale(x)
              .orient("bottom");

          var yAxis = d3.svg.axis()
              .scale(y)
              .orient("left");

          var line = d3.svg.line()
              .x(dataset.map(function(d) { return d.name; }))
              .y(dataset.map(function(d) { return d.value; }));

          var svg = d3.select("#chart_for_imp_file_access").append("svg")
              .attr("width", width + margin.left + margin.right)
              .attr("height", height + margin.top + margin.bottom)
            .append("g")
              .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

          // d3.tsv("data.tsv", function(error, data) {
          //   if (error) throw error;

          //   data.forEach(function(d) {
          //     d.date = parseDate(d.date);
          //     d.close = +d.close;
          //   });

            x.domain(dataset.map(function(d) { return d.name; }));
            y.domain(dataset.map(function(d) { return d.value; }));

            svg.append("g")
                .attr("class", "x axis")
                .attr("transform", "translate(0," + height + ")")
                .call(xAxis);

            svg.append("g")
                .attr("class", "y axis")
                .call(yAxis)
              .append("text")
                .attr("transform", "rotate(-90)")
                .attr("y", 6)
                .attr("dy", ".71em")
                .style("text-anchor", "end")
                .text("Price ($)");

            svg.append("path")
                .data(line(dataset))
                .attr("class", "line")
                .attr("d", line);
          // });

}

