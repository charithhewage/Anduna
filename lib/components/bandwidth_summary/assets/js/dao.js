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

    var kpiProBand = get_kpi(dataset[0].data,dataset[1].data).toFixed(2);

    var desinObPro = getColorandIcon(kpiProBand);
    var colorPro = desinObPro.color;
    var iconPro = desinObPro.icon ;

    var proBandPercentages = '<div class="stat-percent font-bold text-info '+colorPro+'">'+ kpiProBand+ '%' + iconPro + '</div>'


    var appendData = `
      <strong>Proxy Log Bandwidth</strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Today</small>
          <h1>`+ dataset[0].data  +`</h1>
        </div>
        <div class="col-xs-2"> `+proBandPercentages+` </div>
        <div class="col-xs-5">
          <small class="stats-label">Yesterday</small>
          <h4>`+dataset[1].data  +`</h4>
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


    var kpiAlBand = get_kpi(dataset[dataset.length-1].data,dataset[dataset.length-2].data).toFixed(2);
    var desinObAlBand = getColorandIcon(kpiAlBand);
    var colorAlBand = desinObAlBand.color;
    var iconAlBand = desinObAlBand.icon ;

    var alBandPercentages = '<div class="stat-percent font-bold text-info '+colorAlBand+'">'+ kpiAlBand+ '%' + iconAlBand + '</div>'

    var appendData6 = `
      <strong>Access Log Bandwidth</strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Today</small>
          <h1>`+ dataset[dataset.length-1].data  +`</h1>
        </div>
        <div class="col-xs-2"> `+alBandPercentages+` </div>
        <div class="col-xs-5">
          <small class="stats-label">Yesterday</small>
          <h4>`+dataset[dataset.length-2].data  +`</h4>
        </div>`;

    $("#bandwidthAl").html(appendData6)

    //drawAccesslogBandwidthChart(dataset);


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



function moreInformation3(){
  var container3 = `
    <div class="ibox float-e-margins">
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
                      <strong>Proxylog Bandwidth vs date</strong>
                      <div class="row">
                        <div id="proxyDetailsChart"></div>
                      </div>
                    </div>
                  </div>
                  <div id="accessDetails" class="tab-pane">
                      <div class="panel-body">
                          <strong>Access Server Users vs date</strong>
                          <div class="row">
                            <div id="accessDetailsChart"></div>
                          </div>
                      </div>
                  </div>
                  <div id="heighestDataSite" class="tab-pane">
                      <strong>Highest Data Consumed Sites </strong>
                      <div class="row">
                        <div id="heighestDataAccessSites"></div>
                      </div>
                  </div>
                  <div id="higheestDataIp" class="tab-pane">
                      <div class="panel-body">
                        <strong>Highest Data Consumed IP Addresses</strong>
                        <div class="row">
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



