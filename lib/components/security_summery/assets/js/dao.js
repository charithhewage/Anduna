var con3 ={ 
  sec_sum: {
    important_file_access_data2: "lib/components/security_summery/controllers/important_file_access_data_2.jag",
    access_data4042: "lib/components/security_summery/controllers/access_data_404_2.jag",
    // access_data404_group_by_request: "lib/components/attack_404/controllers/access_data_404_group_by_request.jag", 
  }
}

function showimportantFileAccessDataTable2(){

    //when new data comes remove existing svg bar chart
    //var chart = d3.select("#important_file_access_chart").remove();

console.log(" inside showimportnatFileAccessDataTable");
    $.getJSON(con3.sec_sum.important_file_access_data2 , function (response){
        console.log(" Data  Recieved");


          var passtableheader = '<tr>'+
                                  '<th style="padding-right: 20px;">Client Ip Address</th>'+
                                  '<th style="padding-right: 20px;">Date</th>'+
                                  '<th style="padding-right: 20px;">Time</th>'+
                                  '<th style="padding-right: 20px;">Requested File</th>'+ 
                                  '<th style="padding-right: 20px;">Result Code</th>'+
                                  '<th style="padding-right: 20px;">Size</th>'+
                                  '<th style="padding-right: 20px;">Url</th>'+
                                  '<th style="padding-right: 20px;">Browser</th>'+
                               '</tr>';
                                
                            
                       

        $("#summery_table_head").html(passtableheader);

var tablebody="";

        $.each(response, function (key, val) {
    
        
            var info1 = val.requestedFile.split('/');//split the string
            var req_type=info1[0];

            var info2 = val.date_time.split(':');
            var date = info2[0];
            var time = info2[1]+":"+info2[2]+":"+info2[3];

            var info3 = val.browserInfo.split('/');//split the string
            var browser_info=info3[0];

        tablebody += '<tr>'+
                      '<td class="clientIp">'+val.clientIpAddress+'</td>'+
                      '<td class="date">'+date+'</td>'+
                      '<td class="time">'+time+'</td>'+
                      '<td class="requestFile">'+req_type+'</td>'+ 
                      '<td class="resultCode">'+val.resultCode+'</td>'+
                      '<td class="size">'+val.size+'</td>'+
                      '<td class="url">'+val.url+'</td>'+
                      '<td class="url">'+browser_info+'</td>'+
                    '</tr>';



        });

        $("#summery_table_body").html(tablebody);
    });

}

function show404reqestTable2(){

     //when new data comes remove existing svg bar chart
    //var chart = d3.select("#access_404_chart").remove();

console.log(" inside show404request table");
    $.getJSON(con3.sec_sum.access_data4042 , function (response){
        console.log(" Data  Recieved");

        var passtableheader = '<tr>'+
                                  '<th style="padding-right: 20px;">Client Ip Address</th>'+
                                  '<th style="padding-right: 20px;">Date</th>'+
                                  '<th style="padding-right: 20px;">Time</th>'+
                                  '<th style="padding-right: 20px;">Requested File</th>'+ 
                                  '<th style="padding-right: 20px;">Result Code</th>'+
                                  '<th style="padding-right: 20px;">Size</th>'+
                                  '<th style="padding-right: 20px;">Url</th>'+
                               '</tr>';
                                
                            
                       

        $("#summery_table_head").html(passtableheader);

var tablebody="";
        $.each(response, function (key, val) {
    
        

            var info1 = val.requestedFile.split('/');//split the string
            var req_type=info1[0];

            var info2 = val.date_time.split(':',1);
            var date = info2[0];
            var time = info2[1];

        tablebody += '<tr>'+
                      '<td class="clientIp">'+val.clientIpAddress+'</td>'+
                      '<td class="date">'+date+'</td>'+
                      '<td class="time">'+time+'</td>'+
                      '<td class="requestFile">'+req_type+'</td>'+ 
                      '<td class="resultCode">'+val.resultCode+'</td>'+
                      '<td class="size">'+val.size+'</td>'+
                      '<td class="url">'+val.url+'</td>'+
                    '</tr>';

       

        });
        
       
         $("#summery_table_body").html(tablebody);
       
    });

}


// $(document).ready( function(){
//   showimportantFileAccessDataTable2();
// })