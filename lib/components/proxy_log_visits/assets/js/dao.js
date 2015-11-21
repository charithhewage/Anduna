var controllers ={
  proxy_log_visits: "lib/components/proxy_log_visits/controllers/proxy_log_visits.jag",
  pl_access: "lib/components/proxy_log_visits/controllers/pl_access.jag",

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

function show_average_visits(){

  $.getJSON(controllers.proxy_log_visits , function (response){
        console.log(" show_average_visits");

        var dataset2 = [];

        $.each(response, function (key, val) {

          dataset2.push({date : val.accessDate,visits : val.totalRequests});
            
  
        });


       drawTodayVisitsChart(dataset2); 
         
       var vType = document.getElementById("type");
       var vTypeVal = vType.getElementsByTagName("span");
       vTypeVal[0].innerHTML = "Average Visits per Day";

       var av = get_pl_average_hits(dataset2);

       var ibox = document.getElementById("visits");
       var iboxVal =  ibox.getElementsByTagName("h1");
       var iboxSmVal = ibox.getElementsByTagName("small");
       var iobxYesVal = ibox.getElementsByTagName("h4");
       var kpi = ibox.getElementsByTagName("h3");
       var graphText = document.getElementById("panel").getElementsByTagName("span");

       iboxVal[0].innerHTML = av; 
       iobxYesVal[0].innerHTML = " " ;
       kpi[0].innerHTML = " ";
       iboxSmVal[0].innerHTML = " ";
       graphText[0].innerHTML = "All Visits";

      

    });
}

function show_today_visits(){

  $.getJSON(controllers.proxy_log_visits,function(response){
        console.log("show_today_visits");

        var dataset3 = [];

        $.each(response, function (key, val){

          dataset3.push({date : val.accessDate,visits : val.totalRequests});

        });

      drawTodayVisitsChart(dataset3);  

      console.log(dataset3);

      var vType = document.getElementById("type");
      console.log(vType);
      var vTypeVal = vType.getElementsByTagName("span");
      console.log(vTypeVal);
      vTypeVal[0].innerHTML = "Today Visits";

      var today = get_pl_today_hits(dataset3);
      var yesterday = dataset3[dataset3.length-2].visits 

      var ibox = document.getElementById("visits");
      var iboxVal =  ibox.getElementsByTagName("h1");
      var iobxYesVal = ibox.getElementsByTagName("h4");
      var iboxSmVal = ibox.getElementsByTagName("small");
      var graphText = document.getElementById("panel").getElementsByTagName("span");
     
      iboxVal[0].innerHTML = today; 
      iobxYesVal[0].innerHTML = yesterday;
      iboxSmVal[0].innerHTML = "Yesterday";
      graphText[0].innerHTML = "All Visits";

      var kpi = function(today,yesterday){

      if(yesterday>0){
        var dif = today-yesterday;
        return (dif/yesterday)*100;
        }
        else{
         return today*100; 
        } 
      }

      var kpiVal = kpi(today,yesterday);
      kpiVal = kpiVal.toFixed(2);

      var kpi = ibox.getElementsByTagName("h3");
      kpi[0].innerHTML = kpiVal+"%";

      if (kpiVal>=0) {

        kpi[0].style.color = "#7FFF00";

      }
      else if(kpiVal<0){
        kpi[0].style.color = "#FF0000"; 
      }

  });
}

function get_pl_today_hits(dataset){

  return todayRequest = dataset[dataset.length-1].visits ;
}

function get_pl_max_visit(){

console.log("inside get_pl_access_summary");

    $.getJSON(controllers.pl_access , function (response){
        console.log(" pl_access_max_visit");

        var dataset = [];

        $.each(response, function (key, val) {

          dataset.push({maxWebsiteUrl : val.webSiteUrl});
            
  
        });

      drawTopSiteAccess();  

      var vType = document.getElementById("type");
      var vTypeVal = vType.getElementsByTagName("span");
      vTypeVal[0].innerHTML = "Highest Visited Site";

      var ibox = document.getElementById("visits");
      var iboxVal =  ibox.getElementsByTagName("h1");
      var iobxYesVal = ibox.getElementsByTagName("h4");
      var iboxSmVal = ibox.getElementsByTagName("small");
      var kpi = ibox.getElementsByTagName("h3");
      var graphText = document.getElementById("panel").getElementsByTagName("span");

      //$("#visits h1").html("dddddddddddd")

      iboxVal[0].innerHTML = dataset[0].maxWebsiteUrl ; 
      iobxYesVal[0].innerHTML = " " ;
      kpi[0].innerHTML = " ";
      iboxSmVal[0].innerHTML = " ";
      graphText[0].innerHTML = "Top Visited Sites";

    });
}

function show_today_unique_visits(){

console.log("d");

    $.getJSON(controllers.proxy_log_visits,function(response){
        console.log("show_today_unique_visits");
        var dataset2 = [];

        $.each(response, function (key, val) {

            dataset2.push({date : val.accessDate,visits : val.totalVisitors});

        });

      drawTodayUniqVisitsChart(dataset2);

      //console.log(dataset2.visits);
      var todayUniqueVisits = dataset2[dataset2.length-1].visits; 
      var yesterdayUniqueVisits = dataset2[dataset2.length-2].visits;

      var vType = document.getElementById("type");
      var vTypeVal = vType.getElementsByTagName("span");
      vTypeVal[0].innerHTML = "Unique Visits";

      var ibox = document.getElementById("visits");
      var iboxVal =  ibox.getElementsByTagName("h1");
      var iobxYesVal = ibox.getElementsByTagName("h4");
      var iboxSmVal = ibox.getElementsByTagName("small");
      var graphText = document.getElementById("panel").getElementsByTagName("span");

      iboxVal[0].innerHTML = todayUniqueVisits ; 
      iobxYesVal[0].innerHTML = yesterdayUniqueVisits ;
      iboxSmVal[0].innerHTML = " Yesterday";
      graphText[0].innerHTML = "Unique Visits";

      var kpi = function(today,yesterday){

      if(yesterday>0){
        var dif = today-yesterday;
        return (dif/yesterday)*100;
        }
        else{
         return today*100; 
        } 
      }

      var kpiVal = kpi(todayUniqueVisits,yesterdayUniqueVisits);
      kpiVal = kpiVal.toFixed(2);

      var kpi = ibox.getElementsByTagName("h3");
      kpi[0].innerHTML = kpiVal+"%";

      if (kpiVal>=0) {

        kpi[0].style.color = "#7FFF00";

      }
      else if(kpiVal<0){
        kpi[0].style.color = "#FF0000"; 
      }


    });
}

function show_today_failed_visits(){

  $.getJSON(controllers.proxy_log_visits,function(response){
        console.log("show_today_failed_visits");

        var dataset3 = [];

        $.each(response, function (key, val){

          dataset3.push({date : val.accessDate,failedVisits: val.total404Count});

        });

      drawFailedVisitsChart(dataset3);  

      var vType = document.getElementById("type");
      console.log(vType);
      var vTypeVal = vType.getElementsByTagName("span");
      console.log(vTypeVal);
      vTypeVal[0].innerHTML = "Today Failed Visits";

      var today = dataset3[dataset3.length-1].failedVisits ;
      var yesterday = dataset3[dataset3.length-2].failedVisits; 

      var ibox = document.getElementById("visits");
      var iboxVal =  ibox.getElementsByTagName("h1");
      var iobxYesVal = ibox.getElementsByTagName("h4");
      var iboxSmVal = ibox.getElementsByTagName("small");
      var graphText = document.getElementById("panel").getElementsByTagName("span");
     
      iboxVal[0].innerHTML = today; 
      iobxYesVal[0].innerHTML = yesterday;
      iboxSmVal[0].innerHTML = "Yesterday";
      graphText[0].innerHTML = "Failed Visits";

      var kpi = function(today,yesterday){

      if(yesterday>0){
        var dif = today-yesterday;
        return (dif/yesterday)*100;
        }
        else{
         return today*100; 
        } 
      }

      var kpiVal = kpi(today,yesterday);
      kpiVal = kpiVal.toFixed(2);

      var kpi = ibox.getElementsByTagName("h3");
      kpi[0].innerHTML = kpiVal+"%";

      if (kpiVal>=0) {

        kpi[0].style.color = "#7FFF00";

      }
      else if(kpiVal<0){
        kpi[0].style.color = "#FF0000"; 
      }

  });
}

function show_today_success_visits(){

  $.getJSON(controllers.proxy_log_visits,function(response){
        console.log("show_today_success_visits");

        var dataset3 = [];

        $.each(response, function (key, val){

          dataset3.push({date : val.accessDate,successVisits: val.total200Count});

        });

      drawSuccessVisitsChart(dataset3);  

      var vType = document.getElementById("type");
      console.log(vType);
      var vTypeVal = vType.getElementsByTagName("span");
      console.log(vTypeVal);
      vTypeVal[0].innerHTML = "Today Successed Visits";

      var today = dataset3[dataset3.length-1].successVisits;
      var yesterday = dataset3[dataset3.length-2].successVisits; 

      var ibox = document.getElementById("visits");
      var iboxVal =  ibox.getElementsByTagName("h1");
      var iobxYesVal = ibox.getElementsByTagName("h4");
      var iboxSmVal = ibox.getElementsByTagName("small");
      var graphText = document.getElementById("panel").getElementsByTagName("span");
     
      iboxVal[0].innerHTML = today; 
      iobxYesVal[0].innerHTML = yesterday;
      iboxSmVal[0].innerHTML = "Yesterday";
      graphText[0].innerHTML = "Successed Visits";

      var kpi = function(today,yesterday){

      if(yesterday>0){
        var dif = today-yesterday;
        return (dif/yesterday)*100;
        }
        else{
         return today*100; 
        } 
      }

      var kpiVal = kpi(today,yesterday);
      kpiVal = kpiVal.toFixed(2);

      var kpi = ibox.getElementsByTagName("h3");
      kpi[0].innerHTML = kpiVal+"%";

      if (kpiVal>=0) {

        kpi[0].style.color = "#7FFF00";

      }
      else if(kpiVal<0){
        kpi[0].style.color = "#FF0000"; 
      }

  });
}



