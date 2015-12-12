var widgController4 ={
  accesslog_threats: "lib/components/threats_summary/controllers/al_alert_daily_summary.jag",
  proxylog_threats: "lib/components/threats_summary/controllers/pl_alert_daily_summary.jag",
  
}


function show_accesslog_threats(){

  $.getJSON(widgController4.accesslog_threats,function (response){
        console.log("show_accesslog_threats");

        var dataset = [];
    
        $.each(response, function (key, val){

          dataset.push({date : val.access_date,data : val.alertCount});
        }); 

      console.log(dataset);

     var kpiAlThreats = get_kpi(dataset[dataset.length-1].data,dataset[dataset.length-2].data).toFixed(2);
    

    var desinObAlThreats = getColorandIcon(kpiAlThreats);
    var color = desinObAlThreats.color;
    var icon = desinObAlThreats.icon ;

    var alThreatPercentage = '<div class="stat-percent font-bold text-info '+color+'">'+ kpiAlThreats+ '%' + icon + '</div>'

     var appendData4 = `
      <strong>Access Log Threats</strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Today</small>
          <h1>`+ dataset[dataset.length-1].data +`</h1>
        </div>
        <div class="col-xs-2"> `+alThreatPercentage+` </div>
        <div class="col-xs-5">
          <small class="stats-label">Yesterday</small>
          <h4>`+dataset[dataset.length-2].data +`</h4>
        </div>

      </div>
        <div id="threatsPl"><div>`;

    $("#threats .JS_container").html(appendData4)

  });
}

function show_proxylog_threats(){

  $.getJSON(widgController4.proxylog_threats,function (response){
        console.log("show_proxylog_threats");

        var dataset = [];

        $.each(response, function (key, val){

          dataset.push({date : val.acces_date,data : val.alertCount});
          
        });  

      console.log(dataset);
     
      var kpiPlThreats = get_kpi(dataset[dataset.length-1].data,dataset[dataset.length-2].data).toFixed(2);

      var desinObPlThreats = getColorandIcon(kpiPlThreats);
      var colorThreat = desinObPlThreats.color;
      var iconThreat = desinObPlThreats.icon ;

      var plThreatPercentage = '<div class="stat-percent font-bold text-info '+colorThreat+'">'+ kpiPlThreats+ '%' + iconThreat + '</div>'

       var appendData5 = `
      <strong>Proxy Log Threats</strong>
      <div class="row border-bottom">
        <div class="col-xs-5">
          <small class="stats-label">Today</small>
          <h1>`+ dataset[dataset.length-1].data +`</h1>
        </div>
        <div class="col-xs-2"> `+plThreatPercentage+` </div>
        <div class="col-xs-5">
          <small class="stats-label">Yesterday</small>
          <h4>`+dataset[dataset.length-2].data +`</h4>
        </div>`;

    $("#threatsPl").html(appendData5)
  

  });
}

function getProxylogThreats(){
  $.getJSON(widgController4.proxylog_threats,function (response){
        console.log("show_proxylog_threats");

        var dataset = [];
    
        $.each(response, function (key, val){

          dataset.push({date : val.access_date,count : val.alertCount});
         
        });
       drawProxylogThreatChart(dataset); 
   });     
}

function getAccesslogThreats(){
  $.getJSON(widgController4.accesslog_threats,function (response){
        console.log("show_accesslog_threats");

        var dataset = [];
    
        $.each(response, function (key, val){

          dataset.push({date : val.access_date,count : val.alertCount});
         
        });
       drawAccesslogThreatChart(dataset); 
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

function moreInformation4(){
  var container4 = `
    <div class="ibox float-e-margins">
      <div class="ibox-content" style="padding:0">
        <div class="tabs-container" style="min-height:300px">
          <div class="tabs-left">
            <ul class="nav nav-tabs">
              <li onClick ="getProxylogThreats()" class="active"><a data-toggle="tab" href="#proxyThreats" aria-expanded="true">Proxy Log Threats Details</a></li>
              <li onClick="getAccesslogThreats()"><a data-toggle="tab" href="#accessThreats" aria-expanded="false">Access log Threats Details</a></li>
              <!--<li onClick="drawHighestBandSites()"><a data-toggle="tab" href="#heighestDataSite" aria-expanded="false">Hisgest Data Consumed Sites</a></li>-->
              <!--<li onClick="drawHighestBandIps()"><a data-toggle="tab" href="#higheestDataIp" aria-expanded="false">Highest Data Accessed IPs</a></li>-->
              <li onClick="generate_report()"><a data-toggle="tab" href="#failedRequests" aria-expanded="false">Generate Report</a></li>
            </ul>
              <div class="tab-content ">
                  <div id="proxyThreats" class="tab-pane active">
                    <div class="panel-body">
                      <strong>Proxy Log Threats vs date</strong>
                      <div class="row">
                        <div id="proxyThreatsChart"></div>
                      </div>
                    </div>
                  </div>
                  <div id="accessThreats" class="tab-pane">
                      <div class="panel-body">
                          <strong>Access Server Threats vs date</strong>
                          <div class="row">
                            <div id="accessThreatsChart"></div>
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
  return container4;
}


$(document).ready( function(){

  $("#theatsMore").click(function(){

    $("#widgetMoreInfo").html(moreInformation4())
    getProxylogThreats()
  
  });

show_accesslog_threats();
show_proxylog_threats();


})




