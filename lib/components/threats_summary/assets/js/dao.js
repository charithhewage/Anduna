var widgController4 ={
  accesslog_threats: "lib/components/threats_summary/controllers/al_alert_daily_summary.jag",
  proxylog_threats: "lib/components/threats_summary/controllers/pl_alert_daily_summary.jag",
  
}
var pldataset =[];
var aldataset =[];

function show_accesslog_threats(){

  $.getJSON(widgController4.accesslog_threats,function (response){
        console.log("show_accesslog_threats");

        var dataset = [];
        if(pldataset.length!=0){
        	pldataset = [];
        }
    
        $.each(response, function (key, val){

          dataset.push({date : val.access_date,data : val.alertCount});
          pldataset.push({date : val.access_date,data : val.alertCount});	
         
        });

    //testChartygig(dataset);  

      console.log(dataset);

      var value = dataset[dataset.length-1].data,
          header = "Access Log Threats",
          graphText = "Access Log Threats",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].data,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOM4(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);    

  });
}

function show_proxylog_threats(){

  $.getJSON(widgController4.proxylog_threats,function (response){
        console.log("show_proxylog_threats");

        var dataset = [];
         if(aldataset.length!=0){
        	aldataset = [];
        }

        $.each(response, function (key, val){

          dataset.push({date : val.acces_date,data : val.alertCount});
          aldataset.push({date : val.acces_date,data : val.alertCount});	
          
        });  

      console.log(dataset);
     
      var value = dataset[dataset.length-1].data,
          header = "Proxy log threats",
          graphText = "Proxy log threats",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].data,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOM4(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);    

  });
}

function get_total_today_threats(){

	var pl_today = pldataset[pldataset.length-1].data,
    	al_today = aldataset[aldataset.length-1].data,
    	total_today = pl_today + al_today;
    	
    return 	total_today;
}

function get_total_yesterday_threats(){

	var pl_yesterday = pldataset[pldataset.length-2].data,
    	al_yesterday = aldataset[aldataset.length-2].data,
    	total_yesterday = pl_yesterday + al_yesterday;

    return total_yesterday;	
}

function show_total_threats(){

    console.log("show_total_threats");

    var value = get_total_today_threats(),
        header = "Total",
        graphText = "Total Threats",
        yesterdayText = "Yesterday",
        yesterday = get_total_yesterday_threats(),
        kpiVal = get_kpi(value,yesterday).toFixed(2),
        kpi = kpiVal+"%";

    changeDOM4(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);    

}

function show_average_accesslog_threats(){

    console.log("show_average_accesslog_threats");

   	var value = get_average_threats(aldataset);
    var header = "Average Accesslog Threats",
        graphText = "Average Accesslog Threats";

    //drawIncomingChart(acdataset);

    changeDOM4(header,value,null,null,null,null,graphText);    

}

function show_average_proxylog_threats(){

    console.log("show_average_proxylog_threats");

   	var value = get_average_threats(pldataset);
    var header = "Average Proxylog Threats",
        graphText = "Average Proxylog Threats";

    //drawOutgoingChart(pdataset);

    changeDOM4(header,value,null,null,null,null,graphText);    

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

function get_average_threats(dataset){

    var count = 0 ;
    var data = 0 ;
    for (var i =0; i <dataset.length; i++) {
       data += dataset[i].data;
       count +=1;
    };
    var average = Math.round(data/count) ; 
    return average ; 

}


function changeDOM4(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText){
        
        console.log("inside change dom");

        if (header==null){header=" "}
        if (value==null) {value =" "}
        if (yesterdayText==null) {yesterdayText=" "}
        if (yesterday ==null) {yesterday = " "}
        if (kpi ==null) {kpi = ""}
        if (graphText == null) {graphText = " "};

        $("#type4 span").html(header);
        $("#threats h1").html(value);
        $("#threats small").html(yesterdayText);
        $("#threats h4").html(yesterday);
        $("#threats h3").html(kpi);
        $("#panel4 span").html(graphText);

        if (kpiVal>=0) {

          $("#threats h3").css("color","#7FFF00");         

        }
        else if(kpiVal<0){
          $("#threats h3").css("color","#FF0000");
        }
          
}

show_accesslog_threats();
show_proxylog_threats();





