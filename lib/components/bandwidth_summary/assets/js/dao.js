var widgController3 ={
  proxylog_bandwidth: "lib/components/proxy_log_visits/controllers/proxy_log_visits.jag",
  accesslog_bandwidth: "lib/components/access_log_hits/controllers/al_daily_summary.jag",
  pl_data_access : "lib/components/bandwidth_summary/controllers/pl_data_access.jag",
  al_data_access : "lib/components/bandwidth_summary/controllers/al_data_access.jag",
  
}


function show_proxylog_bandwidth(){

  $.getJSON(widgController3.proxylog_bandwidth,function (response){
        console.log("show_proxylog_bandwidth");

        var dataset = [];
    
        $.each(response, function (key, val){

          dataset.push({date : val.access_date,data : val.totalDataAccessed,requests : val.totalRequests});
         
        });

    console.log(dataset);

    var today = dataset[0].data;
    var yesterday = dataset[1].data;

    var kpiProBand = get_kpi(today,yesterday).toFixed(2);

    var todayPlBand,yesterdayPlBand ;

    todayPlBand = bytesToSize(today);
    yesterdayPlBand = bytesToSize(yesterday);

    var desinObPro = getColorandIcon(kpiProBand);
    var colorPro = desinObPro.color;
    var iconPro = desinObPro.icon ;

    var proBandPercentages = '<div class="stat-percent font-bold text-info '+colorPro+'">'+ kpiProBand+ '%' + iconPro + '</div>'


    var appendData = `
      <strong>Proxy Log Bandwidth</strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Today</small>
          <h2>`+ todayPlBand +`</h2>
        </div>
        <div class="col-xs-2"> `+proBandPercentages+` </div>
        <div class="col-xs-5">
          <small class="stats-label">Yesterday</small>
          <h4>`+yesterdayPlBand +`</h4>
        </div> 

      </div>
      <div id="bandwidthAl">
      <div>`

    $("#bandwidth .JS_container").html(appendData)

  });
}

function getProxylogData(){
  $.getJSON(widgController3.proxylog_bandwidth,function (response){
        console.log("show_proxylog_bandwidth");

        var dataset = [];
    
        $.each(response, function (key, val){

          dataset.push({date : val.access_date,data : val.totalDataAccessed,requests : val.totalRequests});
         
        });
        drawProxylogBandwidthChart(dataset); 
   });     
}

function getAccesslogData(){
  $.getJSON(widgController3.accesslog_bandwidth,function (response){
        console.log("show_proxylog_bandwidth");

        var dataset = [];
    
        $.each(response, function (key, val){

          dataset.push({date : val.access_date,data : val.totalDataAccessed,requests : val.totalRequests});
         
        });
        drawAccesslogBandwidthChart(dataset); 
   });     
}


function drawHighestBandSites(){
  $.getJSON(widgController3.pl_data_access,function (response){
        console.log("show_proxylog_bandwidth");

        var dataset = [];
    
        $.each(response, function (key, val){

          dataset.push({url : val.webSiteUrl,dataAccess : val.totalAccessed});
         
        });
        drawHighestBandSitesChart(dataset); 
   });     
}

function drawHighestBandIps(){
  $.getJSON(widgController3.al_data_access,function (response){
        console.log("show_accesslog_bandwidth");

        var dataset = [];
    
        $.each(response, function (key, val){

          dataset.push({url : val.ipAddress,dataAccess : val.totalAccessed});
         
        });
        drawHighestBandIpsChart(dataset); 
   });     
}


function show_accesslog_bandwidth(){

  $.getJSON(widgController3.accesslog_bandwidth,function (response){
        console.log("show_incoming_bandwidth");

        var dataset = [];
        $.each(response, function (key, val){

          dataset.push({date : val.access_date,data : val.totalDataAccessed});
          
        });  

      console.log(dataset);

    var today = dataset[dataset.length-1].data;
    var yesterday = dataset[dataset.length-2].data;

    var kpiAlBand = get_kpi(today ,yesterday).toFixed(2);
    var desinObAlBand = getColorandIcon(kpiAlBand);
    var colorAlBand = desinObAlBand.color;
    var iconAlBand = desinObAlBand.icon ;

    var todayAlBand = bytesToSize(today);
    var yesterdayAlBand = bytesToSize(yesterday);

    var alBandPercentages = '<div class="stat-percent font-bold text-info '+colorAlBand+'">'+ kpiAlBand+ '%' + iconAlBand + '</div>'

    var appendData6 = `
      <strong>Access Log Bandwidth</strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Today</small>
          <h2>`+todayAlBand+`</h2>
        </div>
        <div class="col-xs-2"> `+alBandPercentages+` </div>
        <div class="col-xs-5">
          <small class="stats-label">Yesterday</small>
          <h4>`+yesterdayAlBand+`</h4>
        </div>`;

    $("#bandwidthAl").html(appendData6)

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

  function bytesToSize(bytes) {

   var sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB'];
   if (bytes == 0) return '0 Byte';
   var i = parseInt(Math.floor(Math.log(bytes) / Math.log(1024)));
   return Math.round(bytes / Math.pow(1024, i), 2) + ' ' + sizes[i];
};


function moreInformation3(){
  var container3 = `
    <div class="ibox float-e-margins">
      <div class="ibox-title">
        <h5>Bandwidth</h5>
      </div>
      <div class="ibox-content" style="padding:0">
        <div class="tabs-container" style="min-height:300px">
          <div class="tabs-left">
            <ul class="nav nav-tabs">
              <li onClick ="getProxylogData()" class="active"><a data-toggle="tab" href="#proxyDetails" aria-expanded="true">Proxylog Bandwidth Details</a></li>
              <li onClick="getAccesslogData()"><a data-toggle="tab" href="#accessDetails" aria-expanded="false">Access log Bandwidth Details</a></li>
              <li onClick="drawHighestBandSites()"><a data-toggle="tab" href="#heighestDataSite" aria-expanded="false">Hisgest Data Consumed Sites</a></li>
              <li onClick="drawHighestBandIps()"><a data-toggle="tab" href="#higheestDataIp" aria-expanded="false">Highest Data Accessed IPs</a></li>
              <li onClick="generate_report()"><a data-toggle="tab" href="#failedRequests" aria-expanded="false">Generate Report</a></li>
            </ul>
              <div class="tab-content ">
                  <div id="proxyDetails" class="tab-pane active">
                    <div class="panel-body">
                      <div id="headproxyDetailsChart" class="row" width="400" height="350">
                        <div id="proxyDetailsChart"></div>
                      </div>
                    </div>
                  </div>
                  <div id="accessDetails" class="tab-pane">
                      <div class="panel-body">
                          <div id="headaccessDetailsChart" class="row">
                            <div id="accessDetailsChart"></div>
                          </div>
                      </div>
                  </div>
                  <div id="heighestDataSite" class="tab-pane">
                    <div class="panel-body">
                      <div id="headheighestDataAccessSites" class="row">
                        <div id="heighestDataAccessSites"></div>
                      </div>
                    </div>  
                  </div>
                  <div id="higheestDataIp" class="tab-pane">
                      <div class="panel-body">
                        <div id="headheighestDataAccessIps" class="row">
                          <div id="heighestDataAccessIps"></div>
                        </div>
                      </div>
                  </div>

              </div>

          </div>

        </div>
      </div>
    </div>
  `
  return container3;
}
$(document).ready( function(){

  $("#bandMore").click(function(){

    $("#widgetMoreInfo").html(moreInformation3())
    getProxylogData();
  
  });

show_proxylog_bandwidth();

show_accesslog_bandwidth();


})



