var con4 ={ 
  alert_sum: {
    get_alert_data: "lib/components/alerts/controllers/get_alert_data.jag",
     }
}

function showAlertDataTable(){

    //when new data comes remove existing svg bar chart
    //var chart = d3.select("#important_file_access_chart").remove();

console.log(" inside showimportnatFileAccessDataTable");
    $.getJSON(con4.alert_sum.get_alert_data , function (response){
        console.log(" Data  Recieved");


          var passtableheader = '<tr>'+
                                  '<th style="padding-right: 20px;">ID</th>'+
                                  '<th style="padding-right: 20px;">Date</th>'+
                                  '<th style="padding-right: 20px;">Time</th>'+
                                  '<th style="padding-right: 20px;">Requested File</th>'+ 
                                  '<th style="padding-right: 20px;">Result Code</th>'+
                                  '<th style="padding-right: 20px;">Size</th>'+
                                  '<th style="padding-right: 20px;">Url</th>'+
                                  '<th style="padding-right: 20px;">Browser</th>'+
                               '</tr>';
                                
                            
                       

        $("#alert_table_head").html(passtableheader);

var tablebody="";

        $.each(response, function (key, val) {
    
        
            // var info1 = val.requestedFile.split('/');//split the string
            // var req_type=info1[0];

            // var info2 = val.date_time.split(':');
            // var date = info2[0];
            // var time = info2[1]+":"+info2[2]+":"+info2[3];

            // var info3 = val.browserInfo.split('/');//split the string
            // var browser_info=info3[0];

        tablebody += '<tr>'+
                      '<td class="clientIp">'+val.id+'</td>'+
                      '<td class="date">'+val.description_1+'</td>'+
                      '<td class="time">'+val.description_2+'</td>'+
                      '<td class="requestFile">'+req_type+'</td>'+ 
                      '<td class="resultCode"></td>'+
                      '<td class="size"></td>'+
                      '<td class="url"></td>'+
                      '<td class="url">/td>'+
                    '</tr>';



        });

        $("#alert_table_body").html(tablebody);
    });

}



// $(document).ready( function(){
//   showimportantFileAccessDataTable2();
// })