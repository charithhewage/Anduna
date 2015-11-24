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

      drawTodayVisitsChart(dataset); 

      var value = get_pl_average_hits(dataset);
      var header = "Average Visits per Day";
      var graphText = "All Visits";

      changeDOM(header,value,null,null,null,null,graphText);

    });
}

function show_today_visits(){

  $.getJSON(widgController.proxy_log_visits,function(response){
        console.log("show_today_visits");

        var dataset = [];

        $.each(response, function (key, val){

          dataset.push({date : val.accessDate,visits : val.totalRequests});

        });

      drawTodayVisitsChart(dataset);  

      console.log(dataset);

      var value = get_pl_today_hits(dataset),
          header = "Today Visits",
          graphText = "All Visits",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].visits,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOM(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);    

  });
}

function show_today_max_visits(){

    $.getJSON(widgController.pl_acess_max, function (response){
        console.log(" pl_access_max_visit");

        var dataset = [];

        $.each(response, function (key, val) {

          dataset.push({maxWebsiteUrl : val.webSiteUrl});
            
  
        });

      drawTopSiteAccess();  

      var value = dataset[0].maxWebsiteUrl,
          header = "Highest Visited Site",
          graphText =  "Top Visited Sites";

      changeDOM(header,value,null, null,null,null,graphText);

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

show_today_visits();



