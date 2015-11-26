var widgController2 ={
  al_daily_summary: "lib/components/access_log_hits/controllers/al_daily_summary.jag",
}

function show_average_hits(){

  $.getJSON(widgController2.al_daily_summary , function (response){
        console.log(" show_average_hits");

        var dataset = [];

        $.each(response, function (key, val) {

          dataset.push({date : val.accessDate,visits : val.totalRequests});
            
  
        });

      console.log(dataset);

      drawTodayHitsChart(dataset); 

      var value = get_pl_average_hits(dataset);
      var header = "Average Hits per Day";
      var graphText = "All Hits";

      changeDOMHits(header,value,null,null,null,null,graphText);

    });
}

function show_today_hits(){

  $.getJSON(widgController2.al_daily_summary,function(response){
        console.log("show_today_hits");

        var dataset = [];

        $.each(response, function (key, val){

          dataset.push({date : val.accessDate,visits : val.totalRequests});

        });

      drawTodayHitsChart(dataset);  

      console.log(dataset);

      var value = get_pl_today_hits(dataset),
          header = "Today Hits",
          graphText = "All Hits",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].visits,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOMHits(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);    

  });
}

function show_today_max_visits(){

    $.getJSON(widgController.pl_acess_max, function (response){
        console.log(" pl_access_max_visit");

        var dataset = [];

        $.each(response, function (key, val) {

          dataset.push({maxWebsiteUrl : val.webSiteUrl});
            
  
        });

      //drawTopSiteAccess();  

      var value = dataset[0].maxWebsiteUrl,
          header = "Highest Visited Site",
          graphText =  "Top Visited Sites";

      changeDOM(header,value,null, null,null,null,graphText);

    });
}

function show_today_unique_hits(){

    $.getJSON(widgController2.al_daily_summary,function(response){
        console.log("show_today_unique_visits");
        var dataset = [];

        $.each(response, function (key, val) {

            dataset.push({date : val.accessDate,visits : val.totalVisitors});

        });

        console.log(dataset);
        drawTodayUniqHitsChart(dataset);

       var value = dataset[dataset.length-1].visits,
          header = "Unique Hits",
          graphText = "Unique Hits",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].visits,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOMHits(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);

    });
}

function show_today_failed_hits(){

  $.getJSON(widgController2.al_daily_summary,function(response){
        console.log("show_today_failed_hits");

        var dataset = [];

        $.each(response, function (key, val){

          dataset.push({date : val.accessDate,failedVisits: val.total404Count});

        });

      drawFailedHitsChart(dataset);  

      var value = dataset[dataset.length-1].failedVisits,
          header = "Today Failed Hits",
          graphText = "Failed Hits",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].failedVisits,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOMHits(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);

  });
}

function show_today_success_hits(){

  $.getJSON(widgController2.al_daily_summary,function(response){
        console.log("show_today_success_hits");

        var dataset = [];

        $.each(response, function (key, val){

          dataset.push({date : val.accessDate,successVisits: val.total200Count});

        });

      drawSuccessHitsChart(dataset);  

      var value = dataset[dataset.length-1].successVisits,
          header = "Today Successed Hits",
          graphText = "Successed Hits",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].successVisits,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOMHits(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);

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

function changeDOMHits(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText){
        
        console.log("inside change dom hits");

        if (header==null){header=" "}
        if (value==null) {value =" "}
        if (yesterdayText==null) {yesterdayText=" "}
        if (yesterday ==null) {yesterday = " "}
        if (kpi ==null) {kpi = ""}
        if (graphText == null) {graphText = " "};

        $("#type2 span").html(header);
        $("#hits h1").html(value);
        $("#hits small").html(yesterdayText);
        $("#hits h4").html(yesterday);
        $("#hits h3").html(kpi);
        $("#panel2 span").html(graphText);

        if (kpiVal>=0) {

          $("#hits h3").css("color","#7FFF00");         

        }
        else if(kpiVal<0){
          $("#hits h3").css("color","#FF0000");
        }
          
}

show_today_hits();



