var con ={ 
  proxy_log: {
    proxy_log_data_group_by_ip: "lib/components/proxy_log_summery/controllers/proxy_logs_last_hour_group_by_ip.jag",
    proxy_log_data: "lib/components/proxy_log_summery/controllers/proxy_logs_last_hour.jag",
    proxy_log_data_group_by_resultCode: "lib/components/proxy_log_summery/controllers/proxy_logs_last_hour_group_by_resultCode.jag",
    proxy_log_data_group_by_type: "lib/components/proxy_log_summery/controllers/proxy_logs_last_hour_group_by_type.jag", 
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


//group by result code, ex:- TCP_HIT/200
function get_proxy_logs_data_group_by_resultCode(){

console.log("proxy_log_data_grp_by_request");

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

//group by type, ex image, text,etc
function get_proxy_logs_data_group_by_type(){

console.log("proxy_log_data_grp_by_type");

    $.getJSON(con.proxy_log.proxy_log_data_group_by_type , function (response){
        console.log(" 404 file grup by request  working");

        var dataset = [];

        $.each(response, function (key, val) {

            //console.log(key + ':' + val.clientIpAddress+ ':' + val.totalcount+ ':' + val.request_size);

            dataset.push({name : val.data_type, value : val.totalcount, req_size : val.request_size, result_code : val.resultCodes});
                 
    
        });

            
                drawProxyLogTypeBasedPieChart(dataset);
            
            

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


        var info1=val.type.split('/');//split the string to get browser
        var data_type=info1[0]

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
        else if (param==data_type){
          console.log("inside condition file Type");

            info += val.clientIpAddress+" "+ val.requestMethod + " "+ val.resultCode +" "+ val.size +" "+ val.fullUrl +" <span style='color:black;'>"+ info1[0] + "</span>/ " + info1[1];
            info+="<br>";
            info+="<br>";

        }
        
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

get_proxy_logs_data_group_by_ip(1);