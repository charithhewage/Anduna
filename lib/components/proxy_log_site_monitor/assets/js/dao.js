var con2 ={ 
  pl_mon: {
    pl_data_group_by_website: "lib/components/proxy_log_site_monitor/controllers/pl_data_group_by_website.jag",
    pl_data__total: "lib/components/proxy_log_site_monitor/controllers/pl_data.jag",
    // access_data404_group_by_request: "lib/components/attack_404/controllers/access_data_404_group_by_request.jag", 
  }
}

function get_PL_data_group_by_website(){
  console.log("404_accessed_data_grp_by_ip");

    $.getJSON(con2.pl_mon.pl_data_group_by_website , function (response){
      
      console.log(" pl access grup by website  working");

      var dataset = [];
      
      $.each(response, function (key, val) {
        dataset.push({name : val.webSiteUrl,value : val.accesscount, acc_size : val.accessdata, av_acc_count : val.avgaccesscount, av_acc_size : val.avgaccessdata});
      });

      
        drawPLAccesswebsiteBasedPieChart(dataset);
     
      
    });
}


function get_PL_data(){
  console.log("pl access  working");

  var param = document.getElementById('pl_monitor').innerHTML;

    $.getJSON(con2.pl_mon.pl_data__total , function (response){
      
      console.log(" 404 file grup by ip  working");

      var info="";


        $.each(response, function (key, val) {
    
        console.log(" get more date on param working");


        // var info1=param.split('.');//split the string to get website
        // var param1=info1[0]

        // var info2=val.fullUrl.split('.');//split the URL string to get webi site
        // var request_type=info2[0]

       
          console.log("inside condition IP");

            info += ""+val.clientIpAddress+" "+ val.date_time + " "+ val.resultCodes +" "+ val.size +" "+ val.requestMethod +"<span style='color:black;'> "+ val.fullUrl+"</span> "+ val.hierarchyCode+" "+ val.type;
            info+="<br>";
            info+="<br>";
        
        
        
        });

        $("#pl_monitor_full_modal").modal();
        $("#pl_monitor_full_modal_content").html("<td><h4><strong></strong></h4></td><td><h4></h4></td><td><h4>"+info+"</h4></td>");
            

     
      
    });
}



$(document).ready( function(){
  get_PL_data_group_by_website();
})