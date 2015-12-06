var controllers ={
  importnt_access_data_group_by_id: "lib/components/important_files_access/controllers/importnt_access_data_group_by_id.jag",
  important_file_access_data: "lib/components/important_files_access/controllers/important_file_access_data.jag",
  important_access_data_group_by_browser: "lib/components/important_files_access/controllers/important_access_data_group_by_browser.jag",
  important_access_data_group_by_request: "lib/components/important_files_access/controllers/important_access_data_group_by_request.jag",

}

function get_data_grup_by_ip(chart){

console.log("inside get_important_file_accessed_data_grp_by_ip");

    $.getJSON(controllers.importnt_access_data_group_by_id , function (response){
        console.log(" impornt file grup by ip  working");

        var dataset = [];

        $.each(response, function (key, val) {

            //console.log(key + ':' + val.clientIpAddress+ ':' + val.totalcount+ ':' + val.request_size+ ':' + val.browserInfo);

            dataset.push({name : val.clientIpAddress,value : val.totalcount, req_size : val.request_size, browser_info : val.browserInfo});
                 
    
        });

            if(chart==1){
                drawImportantFileAccessBarChart(dataset);
            }
            else if (chart==2){
                drawImportantFileAccessPieChart(dataset);
            }

    });
}


function get_data_group_by_browser(){

console.log("inside get_important_file_accessed_data_grp_by_ip");

    $.getJSON(controllers.important_access_data_group_by_browser , function (response){
        console.log(" impornt file grup by browser  working");

        var dataset = [];

        $.each(response, function (key, val) {

            //console.log(key + ':' + val.clientIpAddress+ ':' + val.totalcount+ ':' + val.request_size+ ':' + val.browserInfo);

            dataset.push({name : val.browserinfo,value : val.totalcount, req_size : val.request_size});
                 
    
        });

           
            
                drawImportantFileAccessByBrowserPieChart(dataset);
            

    });
}


function get_data_group_by_request(){

console.log("inside get_important_file_accessed_data_grp_by_ip");

    $.getJSON(controllers.important_access_data_group_by_request , function (response){
        console.log(" impornt file grup by request  working");

        var dataset = [];

        $.each(response, function (key, val) {

            //console.log(key + ':' + val.clientIpAddress+ ':' + val.totalcount+ ':' + val.request_size+ ':' + val.browserInfo);

            dataset.push({name : val.browserinfo,value : val.totalcount, req_size : val.request_size});
                 
    
        });

           
            
                drawImportantFileAccessByRequestPieChart(dataset);
            

    });
}

//var serverUrl = "controllers/important_file_access_data.jag";


function showimportantFileAccessAlData(){

console.log(" inside showimportnatFileAccessAllData");
    $.getJSON(controllers.important_file_access_data , function (response){
        console.log(" Data  Recieved");



var info="";
        $.each(response, function (key, val) {
    
        console.log(" get more date aaa working");
            info += val.clientIpAddress+" "+ val.requestedFile + " "+ val.resultCode +" "+ val.size +" "+ val.url +" "+ val.browserInfo;
            info+="<br>";
            info+="<br>";
        
        });

        $("#importnat_file_access_full_log_modal").modal();
        $("#importnat_file_access_full_log_modal_content").html("<td><h4><strong></strong></h4></td><td><h4></h4></td><td><h4>"+info+"</h4></td>");
            

    });

}

//get full log button, get the relevant data based on IP, browser, etc
function showimportantFileAccessAlDataByParam(){
   

var param = document.getElementById('paramImportantFile').innerHTML;

console.log(" inside showimportnatFileAccessAllData");
    $.getJSON(controllers.important_file_access_data , function (response){
        console.log(param);



var info="";
var ipFilter ="";

        $.each(response, function (key, val) {
    
        console.log(" get more date on param working");


        var info1=val.browserInfo.split('/');//split the string to get browser
        var browser=info1[0]

        var info2=val.requestedFile.split('/');//split the string to get request type
        var request_type=info2[0]

        if(param==val.clientIpAddress){

          console.log("inside condition IP");

            info += "<span style='color:black;'>"+val.clientIpAddress+"</span>"+ val.requestedFile + " "+ val.resultCode +" "+ val.size +" "+ val.url +" "+ val.browserInfo;
            info+="<br>";
            info+="<br>";
        }
        else if (param==browser){

          console.log("inside condition browser");

            info += val.clientIpAddress+" "+ val.requestedFile + " "+ val.resultCode +" "+ val.size +" "+ val.url +"  <span style='color:black;'>"+ info1[0]+" </span>/"+ info1[1];
            info+="<br>";
            info+="<br>";

        }
        else if (param==request_type){
          console.log("inside condition Request Type");

            info += val.clientIpAddress+" <span style='color:black;'>"+ info2[0] + "</span>/ "+ info2[1] + " "+ val.resultCode +" "+ val.size +" "+ val.url +" "+ val.browserInfo;
            info+="<br>";
            info+="<br>";

        }
        
        });

        $("#importnat_file_access_full_log_modal").modal();
        $("#importnat_file_access_full_log_modal_content").html("<td><h4><strong></strong></h4></td><td><h4></h4></td><td><h4>"+info+"</h4></td>");
            

    });

}


function showimportantFileAccessDataTable(){

    //when new data comes remove existing svg bar chart
    var chart = d3.select("#important_file_access_chart").remove();

console.log(" inside showimportnatFileAccessDataTable");
    $.getJSON(controllers.important_file_access_data , function (response){
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
                                
                            
                       

        $("#important_file_access_table_head").html(passtableheader);

var tablebody="";

        $.each(response, function (key, val) {
    
        
            var info1 = val.requestedFile.split('/');//split the string
            var req_type=info1[0];

            // var info2 = val.date_time.split(' ',1);
            // var date = info2[0];
            // var time = info2[1];

            var info3 = val.browserInfo.split('/');//split the string
            var browser_info=info3[0];

        tablebody += '<tr>'+
                      '<td class="clientIp">'+val.clientIpAddress+'</td>'+
                      '<td class="date"></td>'+
                      '<td class="time"></td>'+
                      '<td class="requestFile">'+req_type+'</td>'+ 
                      '<td class="resultCode">'+val.resultCode+'</td>'+
                      '<td class="size">'+val.size+'</td>'+
                      '<td class="url">'+val.url+'</td>'+
                      '<td class="url">'+browser_info+'</td>'+
                    '</tr>';



        });

        $("#important_file_access_table_body").html(tablebody);
    });

}

