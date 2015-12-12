var widgController ={
  proxy_log_visits: "lib/components/proxy_log_visits/controllers/proxy_log_visits.jag",
  pl_access: "lib/components/proxy_log_visits/controllers/pl_access.jag",
  pl_acess_max:"lib/components/proxy_log_visits/controllers/pl_access_max_visit.jag",

}

function show_today_visits(){
	var infoContainer;

  $.getJSON(widgController.proxy_log_visits, function(response){
    console.log("show_today_visits");

    var dataset = [];

    $.each(response, function (key, val){
    	dataset.push({ date : val.access_date , requests : val.totalRequests, users: val.totalVisitors});
    });

    // Show avarage data of Today visits
    var kpiRequests = get_kpi(dataset[0].requests,dataset[1].requests).toFixed(2);
    var kpiUsers = get_kpi(dataset[0].users,dataset[1].users).toFixed(2);

    var desinObUs = getColorandIcon(kpiUsers);
    var color = desinObUs.color;
    var icon = desinObUs.icon ;

    var usersPercentages = '<div class="stat-percent font-bold text-info '+color+'">'+ kpiUsers+ '%' + icon + '</div>'

    var desinObReq = getColorandIcon(kpiRequests);
    var colorReq = desinObReq.color;
    var iconReq = desinObReq.icon ;

    var requestsPercentages = '<div class="stat-percent font-bold text-info '+colorReq+'">'+ kpiRequests+ '%' + iconReq + '</div>'


    var appendData = `
    	<strong>Requests</strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Today</small>
          <h1>`+ dataset[0].requests +`</h1>
        </div>
        <div class="col-xs-2"> `+requestsPercentages+` </div>
        <div class="col-xs-5">
          <small class="stats-label">Yesterday</small>
          <h4>`+dataset[1].requests +`</h4>
        </div>

        
      </div>
      <strong>Users</strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Today</small>
          <h1>`+ dataset[0].users+`</h1>
        </div>
        <div class="col-xs-2"> `+usersPercentages+` </div>
        <div class="col-xs-5">
          <small class="stats-label">Yesterday</small>
          <h4>`+dataset[1].users +`</h4>
        </div>
      </div>`;

    $("#plVisits .JS_container").html(appendData)

    //$("#widgetMoreInfo").append(moreInformation())

   drawTodayVisitsChart(dataset); 

  });
}



function show_today_max_requests(){

  $.getJSON(widgController.pl_access, function (response){
    console.log("Show Today Max Visits");
    console.log(response);
    
    var dataset = [];
    $.each(response, function (key, val) {
      dataset.push({ url : val.webSiteUrl, count: val.requestCount });
    });
    
    drawHighestRequestedSites(dataset);  

  });
}

function show_today_unique_visits(){

    $.getJSON(widgController.proxy_log_visits,function(response){
        console.log("show_today_unique_visits");
        var dataset = [];

        $.each(response, function (key, val) {

            dataset.push({date : val.access_date,users : val.totalVisitors});

        });

      drawTodayUniqVisitsChart(dataset);

    });
}

function show_today_failed_visits(){

  $.getJSON(widgController.proxy_log_visits,function(response){
        console.log("show_today_failed_visits");

        var dataset = [];

        $.each(response, function (key, val){

          dataset.push({date : val.access_date,failedVisits: val.total404Count,users: val.totalVisitors});

        });

      drawFailedVisitsChart(dataset);  

      var kpiFailed = get_kpi(dataset[0].failedVisits,dataset[1].failedVisits).toFixed(2);

      var desinObFailed = getColorandIcon(kpiFailed);
      var colorFailed = desinObFailed.color;
      var iconFailed = desinObFailed.icon ;

      var kpiUsers = get_kpi(dataset[0].users,dataset[1].users).toFixed(2);

    var desinObUs = getColorandIcon(kpiUsers);
    var color = desinObUs.color;
    var icon = desinObUs.icon ;

    var usersPercentages = '<div class="stat-percent font-bold text-info '+color+'">'+ kpiUsers+ '%' + icon + '</div>'

      var failedPercentages = '<div class="stat-percent font-bold text-info '+colorFailed+'">'+ kpiFailed+ '%' + iconFailed + '</div>'

      var appendData = `
      <strong>Failed Requests</strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Today</small>
          <h1>`+ dataset[0].failedVisits +`</h1>
        </div>
        <div class="col-xs-2"> `+failedPercentages+` </div>
        <div class="col-xs-5">
          <small class="stats-label">Yesterday</small>
          <h4>`+dataset[1].failedVisits +`</h4>
        </div>
        
      </div>
      <strong>Users</strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Today</small>
          <h1>`+ dataset[0].users+`</h1>
        </div>
        <div class="col-xs-2"> `+usersPercentages+` </div>
        <div class="col-xs-5">
          <small class="stats-label">Yesterday</small>
          <h4>`+dataset[1].users +`</h4>
        </div>
      </div>`;

    $("#plVisits .JS_container").html(appendData)
      
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

function getColorandIcon(value){

      switch(true) {
      case (Math.round(value) > 90):
        colorReq = 'danger';
        iconReq = '<i class="fa fa-level-up danger"></i>'
        break;
      case (Math.round(value) > 60):
        colorReq = 'warning';
        iconReq = '<i class="fa fa-level-up warning"></i>'
        break;
      case (Math.round(value) > 50):
        colorReq = 'high';
        iconReq = '<i class="fa fa-level-up high"></i>'
        break;
      case (Math.round(value) > 0):
        colorReq = 'normal';
        iconReq = '<i class="fa fa-level-up normal"></i>'
        break;
      case (Math.round(value) < 0):
        colorReq = 'low';
        iconReq = '<i class="fa fa-level-down low"></i>'
        break;
      }
        return {
        color: colorReq,
        icon: iconReq
        };
}

function get_pl_average(dataset,value){

    var count = 0 ;
    var number = 0 ;
    for (var i =0; i <dataset.length; i++) {
       number += dataset[i].value;
       count +=1;
    };
    var average = Math.round(number/count) ; 
    return average ; 

}

function generate_report(){

            var doc = new jsPDF();
            var source = $('#ChartRequests').html();
            var specialElementHandlers = {
                '#bypassme': function (element, renderer) {
                    return true;
                }
            };
            doc.fromHTML(source, 0.5, 0.5, {
                'width': 75,'elementHandlers': specialElementHandlers
            });
            doc.output("dataurlnewwindow");
}

function moreInformation(){
	var container = `
		<div class="ibox float-e-margins">
      <div class="ibox-content" style="padding:0">
				<div class="tabs-container" style="min-height:300px">
				  <div class="tabs-left">
			      <ul class="nav nav-tabs">
		          <li onClick ="show_today_visits()" class="active"><a data-toggle="tab" href="#todayVisits" aria-expanded="true">Request Details</a></li>
		          <li onClick="show_today_unique_visits()"><a data-toggle="tab" href="#todayUnVisits" aria-expanded="false">Poxy Users Details</a></li>
		          <li onClick="show_today_max_requests()"><a data-toggle="tab" href="#heighestVisited" aria-expanded="false">Highest Visited Sites</a></li>
		          <li onClick="show_today_failed_visits()"><a data-toggle="tab" href="#failedRequests" aria-expanded="false">Failed Request Details</a></li>
              <li onClick="generate_report()"><a data-toggle="tab" href="#failedRequests" aria-expanded="false">Generate Report</a></li>
			      </ul>
				      <div class="tab-content ">
				          <div id="todayVisits" class="tab-pane active">
			              <div class="panel-body">
		                  <div id="headChartRequests"class="row" width="440" height="350">
		                  	<div id="ChartRequests"></div>
		                  </div>
			              </div>
				          </div>
				          <div id="todayUnVisits" class="tab-pane">
				              <div class="panel-body">
                          <div id="headChartUsers" class="row" width="440" height="350">
                            <div id="ChartUsers"></div>
                          </div>
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
				                <strong>Failed Requests vs date</strong>
				                <div class="row">
                          <div id="ChartFailedVisits"></div>
                        </div>
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
	$("#widgetMoreInfo").html(moreInformation())

   $("#proxyMore").click(function(){

    $("#widgetMoreInfo").html(moreInformation());
    show_today_visits();
  });

	show_today_visits();
	
})



