var c ={ 
  widget_name: {
    access_data404_group_by_ip: "lib/components/attack_404/controllers/access_data_404_group_by_ip.jag",
    access_data404: "lib/components/attack_404/controllers/access_data_404.jag",
    access_data404_group_by_request: "lib/components/attack_404/controllers/access_data_404_group_by_request.jag", 
}
  

}

function get_404_request_data_group_by_ip(chart){

console.log("404_accessed_data_grp_by_ip");

    $.getJSON(c.widget_name.access_data404_group_by_ip , function (response){
        console.log(" 404 file grup by ip  working");

        var dataset = [];

        $.each(response, function (key, val) {

            //console.log(key + ':' + val.clientIpAddress+ ':' + val.totalcount+ ':' + val.request_size);

            dataset.push({name : val.clientIpAddress,value : val.totalcount, req_size : val.request_size, req_type : val.requestedFile});
                 
    
        });

            if(chart==1){
                draw404RequestIpBasedBarChart(dataset);
            }
            else if (chart==2){
                draw404RequestIpBasedPieChart(dataset);
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

function get_404_request_data_group_by_request(){

console.log("404_accessed_data_grp_by_request");

    $.getJSON(c.widget_name.access_data404_group_by_request , function (response){
        console.log(" 404 file grup by request  working");

        var dataset = [];

        $.each(response, function (key, val) {

            //console.log(key + ':' + val.clientIpAddress+ ':' + val.totalcount+ ':' + val.request_size);

            dataset.push({name : val.requesttype, value : val.totalcount, req_size : val.request_size});
                 
    
        });

            
                draw404RequestRequestBasedPieChart(dataset);
            
            

    });
}


//var serverUrl = "controllers/important_file_access_data.jag";


function show404reqestData(){

// console.log(" inside showimportnatFileAccessAllData");
//     $.getJSON(controllers.access_data_404 , function (response){
//         console.log(" Data  Recieved");

// var info="";
//         $.each(response, function (key, val) {
    
//         console.log(" get more date aaa working");
//             info += val.clientIpAddress+" "+ val.date_time +" "+ val.requestedFile + " "+ val.resultCode +" "+ val.size +" "+ val.url +" "+ val.browserInfo;
//             info+="<br>";
//             info+="<br>";
//         });

//         bootbox.dialog({
//             message: info,
//             title: "Access Log full info within last hour",
//             buttons: {
//                 close: {
//                     label: "Close",
//                     className: "btn-primary",
//                     callback: function() {
//                     }
//                 }
//             }
//         });
//     });

}

