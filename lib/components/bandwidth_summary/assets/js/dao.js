var widgController3 ={
  outgoing_bandwidth: "lib/components/proxy_log_visits/controllers/proxy_log_visits.jag",
  incoming_bandwidth: "lib/components/access_log_hits/controllers/al_daily_summary.jag",
  
}
var pdataset =[];
var acdataset =[];

function show_outgoing_bandwidth(){

  $.getJSON(widgController3.outgoing_bandwidth,function (response){
        console.log("show_outgoing_bandwidth");

        var dataset = [];
        if(pdataset.length!=0){
        	pdataset = [];
        }
    
        $.each(response, function (key, val){

          dataset.push({date : val.accessDate,data : val.totalDataAccessed});
          pdataset.push({date : val.accessDate,data : val.totalDataAccessed});	
         
        });

      drawOutgoingChart(dataset);  

      console.log(dataset);
      console.log(pdataset);

      var value = get_pl_today_bandwidth(dataset),
          header = "Outgoing",
          graphText = "Outgoing Bandwidth",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].data,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOM3(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);    

  });
}

function show_incoming_bandwidth(){

  $.getJSON(widgController3.incoming_bandwidth,function (response){
        console.log("show_incoming_bandwidth");

        var dataset = [];
         if(acdataset.length!=0){
        	acdataset = [];
        }

        $.each(response, function (key, val){

          dataset.push({date : val.accessDate,data : val.totalDataAccessed});
          acdataset.push({date : val.accessDate,data : val.totalDataAccessed});	
          
        });

      drawIncomingChart(dataset);  

      console.log(dataset);
      console.log(acdataset)

      var value = get_pl_today_bandwidth(dataset),
          header = "Incoming",
          graphText = "Incoming Bandwidth",
          yesterdayText = "Yesterday",
          yesterday = dataset[dataset.length-2].data,
          kpiVal = get_kpi(value,yesterday).toFixed(2),
          kpi = kpiVal+"%";

      changeDOM3(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);    

  });
}

function get_total_today_bandwidth(){

	var pl_today = pdataset[pdataset.length-1].data,
    	al_today = acdataset[acdataset.length-1].data,
    	total_today = pl_today + al_today;
    	
    return 	total_today;
}

function get_total_yesterday_bandwidth(){

	var pl_yesterday = pdataset[pdataset.length-2].data,
    	al_yesterday = acdataset[acdataset.length-2].data,
    	total_yesterday = pl_yesterday + al_yesterday;

    return total_yesterday;	
}

function show_total_bandwidth(){

    console.log("show_total_bandwidth");

    var value = get_total_today_bandwidth(),
        header = "Total",
        graphText = "Total Bandwidth",
        yesterdayText = "Yesterday",
        yesterday = get_total_yesterday_bandwidth(),
        kpiVal = get_kpi(value,yesterday).toFixed(2),
        kpi = kpiVal+"%";

    changeDOM3(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText);    

}

function show_average_incoming_bandwidth(){

    console.log("show_average_incoming_bandwidth");

   	var value = get_average_bandwidth(acdataset);
    var header = "Average Incoming",
        graphText = "Incoming Bandwidth";

    drawIncomingChart(acdataset);

    changeDOM3(header,value,null,null,null,null,graphText);    

}

function show_average_outgoing_bandwidth(){

    console.log("show_average_outgoing_bandwidth");

   	var value = get_average_bandwidth(pdataset);
    var header = "Average Outgoing",
        graphText = "Outgong Bandwidth";

    drawOutgoingChart(pdataset);

    changeDOM3(header,value,null,null,null,null,graphText);    

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

function get_average_bandwidth(dataset){

    var count = 0 ;
    var data = 0 ;
    for (var i =0; i <dataset.length; i++) {
       data += dataset[i].data;
       count +=1;
    };
    var average = Math.round(data/count) ; 
    return average ; 

}

function get_pl_today_bandwidth(dataset){

  return todayData = dataset[dataset.length-1].data ;
}

function changeDOM3(header,value,yesterdayText, yesterday,kpi,kpiVal,graphText){
        
        console.log("inside change dom");

        if (header==null){header=" "}
        if (value==null) {value =" "}
        if (yesterdayText==null) {yesterdayText=" "}
        if (yesterday ==null) {yesterday = " "}
        if (kpi ==null) {kpi = ""}
        if (graphText == null) {graphText = " "};

        $("#type3 span").html(header);
        $("#bandwidth h1").html(value);
        $("#bandwidth small").html(yesterdayText);
        $("#bandwidth h4").html(yesterday);
        $("#bandwidth h3").html(kpi);
        $("#panel3 span").html(graphText);

        if (kpiVal>=0) {

          $("#bandwidth h3").css("color","#7FFF00");         

        }
        else if(kpiVal<0){
          $("#bandwidth h3").css("color","#FF0000");
        }
          
}


show_incoming_bandwidth();
show_outgoing_bandwidth();



