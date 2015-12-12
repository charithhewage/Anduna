var widgController2 ={
  al_daily_summary: "lib/components/access_log_hits/controllers/al_daily_summary.jag",
  al_access: "lib/components/access_log_hits/controllers/al_access_summary.jag"

}

function show_today_hits(){

  $.getJSON(widgController2.al_daily_summary,function(response){
        console.log("show_today_hits");

        var dataset = [];

        $.each(response, function (key, val){

         dataset.push({ date : val.access_date , requests : val.totalRequests, users: val.totalVisitors});

        });

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


    var appendData2 = `
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

    $("#hits .JS_container").html(appendData2)

    drawTodayHitsChart(dataset);  
    

  });
}

function show_today_max_hits(){

    $.getJSON(widgController2.al_access, function (response){
        console.log(" al_access_max_visit");

         var dataset = [];
      
        $.each(response, function (key, val) {
          dataset.push({ ip : val.ipAddress, count: val.requestCount });
    
        });
        drawHighestAccessedIps(dataset);
     });

     
}

function show_today_unique_hits(){

    $.getJSON(widgController2.al_daily_summary,function(response){
        console.log("show_today_unique_visits");
        var dataset = [];

        $.each(response, function (key, val) {

            dataset.push({date : val.access_date,visits : val.totalVisitors});

        });

        console.log(dataset);
        drawTodayUniqHitsChart(dataset);

    });
}

function show_today_failed_hits(){

  $.getJSON(widgController2.al_daily_summary,function(response){
        console.log("show_today_failed_hits");

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

    $("#hits .JS_container").html(appendData)

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


function moreInformation2(){
  var container2 = `
    <div class="ibox float-e-margins">
      <div class="ibox-content" style="padding:0">
        <div class="tabs-container" style="min-height:300px">
          <div class="tabs-left">
            <ul class="nav nav-tabs">
              <li onClick ="show_today_hits()" class="active"><a data-toggle="tab" href="#todayhits" aria-expanded="true">Access Details</a></li>
              <li onClick="show_today_unique_hits()"><a data-toggle="tab" href="#todayUnHisits" aria-expanded="false">  IP Details</a></li>
              <li onClick="show_today_max_hits()"><a data-toggle="tab" href="#heighestHit" aria-expanded="false">Highest Accessed IP</a></li>
              <li onClick="show_today_failed_hits()"><a data-toggle="tab" href="#failedHits" aria-expanded="false">Failed Request Details</a></li>
              <li onClick="generate_report()"><a data-toggle="tab" href="#failedRequests" aria-expanded="false">Generate Report</a></li>
            </ul>
              <div class="tab-content ">
                  <div id="todayhits" class="tab-pane active">
                    <div class="panel-body">
                      <strong>Access Reuqests vs date</strong>
                      <div class="row">
                        <div id="ChartHits"></div>
                      </div>
                    </div>
                  </div>
                  <div id="todayUnHisits" class="tab-pane">
                      <div class="panel-body">
                          <strong>Access Server Users vs date</strong>
                          <div class="row">
                            <div id="ChartUnique"></div>
                          </div>
                      </div>
                  </div>
                  <div id="heighestHit" class="tab-pane">
                      <strong>Highest Accessed IP Addresses</strong>
                      <div class="row">
                        <div id="ChartheighestAccessed"></div>
                      </div>
                  </div>
                  <div id="failedHits" class="tab-pane">
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
  return container2;
}
$(document).ready( function(){

  $("#accessMore").click(function(){

    $("#widgetMoreInfo").html(moreInformation2())
    show_today_hits();
  });

  show_today_hits();
  
})





