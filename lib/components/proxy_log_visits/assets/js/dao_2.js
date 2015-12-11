var widgController ={
  proxy_log_visits: "lib/components/proxy_log_visits/controllers/proxy_log_visits.jag",
  pl_access: "lib/components/proxy_log_visits/controllers/pl_access.jag",
  pl_acess_max:"lib/components/proxy_log_visits/controllers/pl_access_max_visit.jag",

}

function show_average_visits(){

  $.getJSON(widgController.proxy_log_visits , function (response){
        console.log(" show_average_visits");

        var dataset = [];

        $.each(response, function (key, val) {

          dataset.push({date : val.accessDate,visits : val.totalRequests});
            
  
        });

      console.log(dataset);

      //drawTodayVisitsChart(dataset); 

      var value = get_pl_average_hits(dataset);
      var header = "Average Visits per Day";
      var graphText = "All Visits";

      changeDOM(header,value,null,null,null,null,graphText);
       iboxVal[0].innerHTML = av; 
       iobxYesVal[0].innerHTML = " " ;
       kpi[0].innerHTML = " ";
       iboxSmVal[0].innerHTML = " ";
       graphText[0].innerHTML = "All Visits";

       $("#visits h4 ").html("ffffffff")

    });
}

function show_today_visits(){
	var infoContainer;

  $.getJSON(widgController.proxy_log_visits, function(response){
    console.log("show_today_visits");

    var dataset = [];

    $.each(response, function (key, val){
    	dataset.push({ date : val.access_date , requests : val.totalRequests, users: val.totalVisitors});
    });

    //drawTodayVisitsChart(dataset); 
    // Show avarage data of Today visits
    var avgRequests = ((dataset[0].requests - dataset[1].requests)/dataset[1].requests )

    var percentage;
    var color;
    var icon;

    switch(true) {
	    case (Math.round(avgRequests) > 90):
        color = 'danger';
        icon = '<i class="fa fa-level-up danger"></i>'
        break;
	    case (Math.round(avgRequests) > 60):
        color = 'warning';
        icon = '<i class="fa fa-level-up warning"></i>'
        break;
	    case (Math.round(avgRequests) > 50):
        color = 'high';
        icon = '<i class="fa fa-level-up high"></i>'
        break;
	    case (Math.round(avgRequests) > 0):
        color = 'normal';
        icon = '<i class="fa fa-level-up normal"></i>'
        break;
	    case (Math.round(avgRequests) < 0):
        color = 'low';
        icon = '<i class="fa fa-level-down low"></i>'
        break;
		}

		percentage = '<div class="stat-percent font-bold text-info '+color+'">'+ (Math.round(avgRequests* 100 )/100)+ '%' + icon + '</div>'



    var appendData = `
    	<strong><small>Today</small></strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Requests</small>
          <h4>`+ dataset[0].requests +`</h4>
        </div>
        <div class="col-xs-2"> `+percentage+` </div>
        <div class="col-xs-5">
          <small class="stats-label">Users</small>
          <h4>`+dataset[0].users +`</h4>
        </div>
        
      </div>
      <strong><small>Yesterday</small></strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Requests</small>
          <h4>`+ dataset[1].requests +`</h4>
        </div>
        <div class="col-xs-2">&nbsp;</div>
        <div class="col-xs-5">
          <small class="stats-label">Users</small>
          <h4>`+dataset[1].users +`</h4>
        </div>
      </div>`;

    $("#plVisits .JS_container").append(appendData)

    //$("#widgetMoreInfo").append(moreInformation())

    drawTodayVisitsChart(dataset);  

      // console.log(dataset);

      // var value = get_pl_today_hits(dataset),
      //     header = "Today Visits",
      //     graphText = "All Visits",
      //     yesterdayText = "Yesterday",
      //     yesterday = dataset[dataset.length-2].visits,
      //     kpiVal = get_kpi(value,yesterday).toFixed(2),
      //     kpi = kpiVal+"%";

      // changeDOM(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);    

  });
}










function drawTodayVisitsChart(dataset){

    var margin = {top: 5, right: 10, bottom: 10, left: 5},
        width = 500 - margin.left - margin.right,
        height = 200 - margin.top - margin.bottom;

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
            return "<strong>INFO : </strong> <span style='color:red'>Date:" + d.date + " Visits :"+d.requests+"</span>";
        })


    //when new data comes remove existing svg bar chart
    d3.select("#visitsBar").remove();
    //d3.select("#the_SVG_ID").remove();

    //var chart = d3.select(".chart")
    var chart = d3.select("#ChartToday").append('svg')
        .attr("id","visitsBar")// id for svg chart
        .attr("width", width + margin.left + margin.right)
        .attr("height", height + margin.top + margin.bottom)
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    chart.call(tip);

    x.domain(dataset.map(function(d) { return d.date; }));
    y.domain([0, d3.max(dataset, function(d) { return d.requests; })]);

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
        .attr("y", function(d) { return y(d.requests); })
        .attr("height", function(d) { return height - y(d.requests); })
        .attr("width", x.rangeBand())
        .style('fill', 'steelblue')
        .on('mouseover',tip.show)
        .on('mouseout',tip.hide);

};



function show_today_max_requests(){

  $.getJSON(widgController.pl_acess_max, function (response){
    console.log("Show Today Max Visits");
    console.log(response);
    
    var dataset = [];
    $.each(response, function (key, val) {
      dataset.push({ url : val.webSiteUrl, count: val.requestCount });
    });
    
    drawTopSiteAccess(response);  


    //d3.select("#ChartheighestVisited").remove()


        var width = 200;
        var height = 200;
        var radius = Math.min(width, height) / 2;

        var color = d3.scale.category20b();

        var svg = d3.select('#ChartheighestVisited')
          .append('svg')
          .attr('width', width)
          .attr('height', height)
          .append('g')
          .attr('transform', 'translate(' + (width / 2) + 
            ',' + (height / 2) + ')');

        var arc = d3.svg.arc()
          .outerRadius(radius);

        var pie = d3.layout.pie()
          .value(function(d) { return d.count; })
          .sort(null);

        var path = svg.selectAll('path')
          .data(pie(dataset))
          .enter()
          .append('path')
          .attr('d', arc)
          .attr('fill', function(d, i) { 
            return color(d.data.webSiteUrl);
          });







  });
}

function show_today_unique_visits(){

    $.getJSON(widgController.proxy_log_visits,function(response){
        console.log("show_today_unique_visits");
        var dataset = [];

        $.each(response, function (key, val) {

            dataset.push({date : val.accessDate,visits : val.totalVisitors});

        });

      drawTodayUniqVisitsChart(dataset);

       var value = dataset[dataset.length-1].visits,
          header = "Unique Visits",
          graphText = "Unique Visits",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].visits,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOM(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);

    });
}

function show_today_failed_visits(){

  $.getJSON(widgController.proxy_log_visits,function(response){
        console.log("show_today_failed_visits");

        var dataset = [];

        $.each(response, function (key, val){

          dataset.push({date : val.accessDate,failedVisits: val.total404Count});

        });

      drawFailedVisitsChart(dataset);  

      var value = dataset[dataset.length-1].failedVisits,
          header = "Today Failed Visits",
          graphText = "Failed Visits",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].failedVisits,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOM(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);

  });
}

function show_today_success_visits(){

  $.getJSON(widgController.proxy_log_visits,function(response){
        console.log("show_today_success_visits");

        var dataset = [];

        $.each(response, function (key, val){

          dataset.push({date : val.accessDate,successVisits: val.total200Count});

        });

      drawSuccessVisitsChart(dataset);  

      var value = dataset[dataset.length-1].successVisits,
          header = "Today Successed Visits",
          graphText = "Successed Visits",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].successVisits,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOM(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);

  });
}

function get_kpi(today,yesterday){

    console.log("inside get KPI");
    if(yesterday>0){
      var dif = today-yesterday;
      return (dif/yesterday)*100;
    }
      else{
        return today*100; 
      } 
}

function get_pl_average_hits(dataset){

    var count = 0 ;
    var visits = 0 ;
    for (var i =0; i <dataset.length; i++) {
       visits += dataset[i].visits;
       count +=1;
    };
    var average = Math.round(visits/count) ; 
    return average ; 

}

function get_pl_today_hits(dataset){

  return todayRequest = dataset[dataset.length-1].visits ;
}

function changeDOM(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText){
        
        console.log("inside change dom");

        if (header==null){header=" "}
        if (value==null) {value =" "}
        if (yesterdayText==null) {yesterdayText=" "}
        if (yesterday ==null) {yesterday = " "}
        if (kpi ==null) {kpi = ""}
        if (graphText == null) {graphText = " "};

        $("#type span").html(header);
        $("#visits h1").html(value);
        $("#visits small").html(yesterdayText);
        $("#visits h4").html(yesterday);
        $("#visits h3").html(kpi);
        $("#panel span").html(graphText);

        if (kpiVal>=0) {

          $("#visits h3").css("color","#7FFF00");         

        }
        else if(kpiVal<0){
          $("#visits h3").css("color","#FF0000");
        }
          
}

function moreInformation(){
	var container = `
		<div class="ibox float-e-margins">
      <div class="ibox-content" style="padding:0">
				<div class="tabs-container" style="min-height:300px">
				  <div class="tabs-left">
			      <ul class="nav nav-tabs">
		          <li class="active"><a data-toggle="tab" href="#todayVisits" aria-expanded="true">Today Visits</a></li>
		          <li onClick="show_average_visits()"><a data-toggle="tab" href="#AvgVisits" aria-expanded="false">Average Visits</a></li>
		          <li><a data-toggle="tab" href="#todayUnVisits" aria-expanded="false">Today Unique Visits</a></li>
		          <li onClick="show_today_max_requests()"><a data-toggle="tab" href="#heighestVisited" aria-expanded="false">Highest Visited Sites</a></li>
		          <li ><a data-toggle="tab" href="#failedRequests" aria-expanded="false">Today Failed Visits</a></li>
			      </ul>
				      <div class="tab-content ">
				          <div id="todayVisits" class="tab-pane active">
			              <div class="panel-body">
		                  <strong>Today Internet access from University</strong>
		                  <div class="row">
		                  	<div id="ChartToday"></div>
		                  </div>
			              </div>
				          </div>
				          <div id="AvgVisits" class="tab-pane">
				              <div class="panel-body">
				                  <strong>Donec quam felis</strong>
				                  <p>Thousand unknown plants are noticed by me</p>
				              </div>
				          </div>
				          <div id="todayUnVisits" class="tab-pane">
				              <div class="panel-body">
				                  <strong>Donec quam felis</strong>
				                  <p>Thousand unknown plants are noticed by me</p>
				              </div>
				          </div>
				          <div id="heighestVisited" class="tab-pane">
				              <strong>Highest Visited Sites from University</strong>
				              <div class="row">
		                  	<div id="ChartheighestVisited"></div>
		                  </div>
				          </div>
				          <div id="failedRequests" class="tab-pane">
				              <div class="panel-body">
				                  <strong>Donec quam felis</strong>
				                  <p>Thousand unknown plants are noticed by me</p>
				              </div>
				          </div>
				      </div>

				  </div>

				</div>
      </div>
    </div>
	`
	return container;
}
$(document).ready( function(){
	$("#widgetMoreInfo").append(moreInformation())

	show_today_visits();
	
})



