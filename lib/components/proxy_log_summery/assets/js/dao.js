var con ={ 
  proxy_log: {
    proxy_log_data_group_by_ip: "lib/components/proxy_log_summery/controllers/proxy_logs_last_hour_group_by_ip.jag",
    proxy_log_data: "lib/components/proxy_log_summery/controllers/proxy_logs_last_hour.jag",
    proxy_log_data_group_by_resultCode: "lib/components/proxy_log_summery/controllers/proxy_logs_last_hour_group_by_resultCode.jag", 
}
  

}

function get_proxy_logs_data_group_by_ip(chart){

console.log("proxy_data_grp_by_ip");

    $.getJSON(con.proxy_log.proxy_log_data_group_by_ip , function (response){
        console.log(" proxy data grup by ip  working");

        var dataset = [];

        $.each(response, function (key, val) {

            //console.log(key + ':' + val.clientIpAddress+ ':' + val.totalcount+ ':' + val.request_size);

            dataset.push({name : val.clientIpAddress,value : val.totalcount, req_size : val.request_size, req_type : val.requestMethod});
                 
    
        });

            if(chart==1){
                drawProxyLogIpBasedBarChart(dataset);
            }
            else if (chart==2){
                drawProxyLogIpBasedPieChart(dataset);
            }

    });
}


// function get_data_group_by_browser(){

// console.log("inside get_important_file_accessed_data_grp_by_ip");

//     $.getJSON(controllers.important_access_data_group_by_browser , function (response){
//         console.log(" impornt file grup by browser  working");

//         var dataset = [];

//         $.each(response, function (key, val) {

//             //console.log(key + ':' + val.clientIpAddress+ ':' + val.totalcount+ ':' + val.request_size+ ':' + val.browserInfo);

//             dataset.push({name : val.browserinfo,value : val.totalcount, req_size : val.request_size});
                 
    
//         });

           
            
//                 drawImportantFileAccessByBrowserPieChart(dataset);
            

//     });
// }

function get_proxy_logs_data_group_by_resultCode(){

console.log("404_acces_data_grp_by_request");

    $.getJSON(con.proxy_log.proxy_log_data_group_by_resultCode , function (response){
        console.log(" 404 file grup by request  working");

        var dataset = [];

        $.each(response, function (key, val) {

            //console.log(key + ':' + val.clientIpAddress+ ':' + val.totalcount+ ':' + val.request_size);

            dataset.push({name : val.resultCodes, value : val.totalcount, req_size : val.request_size, req_type : val.requestMethod});
                 
    
        });

            
                drawProxyLogResultBasedPieChart(dataset);
            
            

    });
}


//var serverUrl = "controllers/important_file_access_data.jag";


function full_proxy_logs_data(){

console.log(" inside show404requestData");
    $.getJSON(con.proxy_log.proxy_log_data , function (response){
        console.log(" Data  Recieved");

var info="";
        $.each(response, function (key, val) {
    
        console.log(" get more date aaa working");
            info += val.clientIpAddress+" "+ val.requestMethod + " "+ val.resultCode +" "+ val.size +" "+ val.fullUrl +" "+ val.type;
            info+="<br>";
            info+="<br>";
        });
        $("#proxy_data_full_log_modal").modal();
        $("#proxy_data_full_log_modal_content").html("<td><h4><strong></strong></h4></td><td><h4></h4></td><td><h4>"+info+"</h4></td>");
         
       
    });

}


function full_proxy_logs_data_by_param(){
   

var param = document.getElementById('paramProxyLog').innerHTML;

console.log(" inside proxy_log_data_by_param");
    $.getJSON(con.proxy_log.proxy_log_data , function (response){
        console.log(param);



var info="";
var ipFilter ="";

        $.each(response, function (key, val) {
    
        console.log(" get more date on param working");


        // var info1=val.resultCodes.split('/');//split the string to get browser
        // var result_code=info1[0]

        // var info2=val.requestedFile.split('/');//split the string to get request type
        // var request_type=info2[0]

         if(param==val.clientIpAddress){

          console.log("inside condition IP");

            info += "<span style='color:black;'>"+val.clientIpAddress+"</span>"+ val.requestMethod + " "+ val.resultCode +" "+ val.size +" "+ val.fullUrl +" "+ val.type;
            info+="<br>";
            info+="<br>";
        }
        else if (param==val.resultCodes){

          console.log("inside condition browser");

            info += val.clientIpAddress+" "+ val.requestMethod + "  <span style='color:black;'>"+ val.resultCodes+" </span>/"+ val.size +" "+ val.fullUrl +" " +val.type;
            info+="<br>";
            info+="<br>";

        }
        // else if (param==request_type){
        //   console.log("inside condition Request Type");

        //     info += val.clientIpAddress+" <span style='color:black;'>"+ info2[0] + "</span>/ "+ info2[1] + " "+ val.resultCode +" "+ val.size +" "+ val.url +" "+ val.browserInfo;
        //     info+="<br>";
        //     info+="<br>";

        // }
        
        });

        $("#proxy_data_full_log_modal").modal();
        $("#proxy_data_full_log_modal_content").html("<td><h4><strong></strong></h4></td><td><h4></h4></td><td><h4>"+info+"</h4></td>");
          

    });

}

function proxy_logs_data_table(){

     //when new data comes remove existing svg bar chart
    var chart = d3.select("#proxy_log_chart").remove();

console.log(" inside proxy_logs_data_table");
    $.getJSON(con.proxy_log.proxy_log_data , function (response){
        console.log(" Data  Recieved");

        var passtableheader = '<tr>'+
                                  '<th style="padding-right: 20px;">Client Ip Address</th>'+
                                  '<th style="padding-right: 20px;">Date</th>'+
                                  '<th style="padding-right: 20px;">Time</th>'+
                                  '<th style="padding-right: 20px;">Requested Method</th>'+ 
                                  '<th style="padding-right: 20px;">Result Code</th>'+
                                  '<th style="padding-right: 20px;">Size</th>'+
                                  '<th style="padding-right: 20px;">Url</th>'+
                               '</tr>';
                                
                            
                       

        $("#proxy_log_table_head").html(passtableheader);

var tablebody="";
        $.each(response, function (key, val) {
    
        

            // var info1 = val.requestMethod.split('/');//split the string
            // var req_type=info1[0];

            // var info2 = val.date_time.split(':',1);
            // var date = info2[0];
            // var time = info2[1];

        tablebody += '<tr>'+
                      '<td class="clientIp">'+val.clientIpAddress+'</td>'+
                      '<td class="date"></td>'+
                      '<td class="time"></td>'+
                      '<td class="requestFile">'+val.requestMethod+'</td>'+ 
                      '<td class="resultCode">'+val.resultCode+'</td>'+
                      '<td class="size">'+val.size+'</td>'+
                      '<td class="url">'+val.fullUrl+'</td>'+
                    '</tr>';

       

        });
        
       
         $("#proxy_log_table_body").html(tablebody);
       
    });

}
