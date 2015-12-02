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
        
            //console.log(val.clientIpAddress + val.requestedFile + val.resultCode)


            //d3.select(this).style("fill", "#CA3A3A");
            


        });

        $("#importnat_file_access_full_log_modal").modal();
        $("#importnat_file_access_full_log_modal_content").html("<td><h4><strong></strong></h4></td><td><h4></h4></td><td><h4>"+info+"</h4></td>");
            

        // bootbox.dialog({
        //     message: info,
        //     title: "Access Log full info within last hour",
        //     buttons: {
        //         close: {
        //             label: "Close",
        //             className: "btn-primary",
        //             callback: function() {
        //             }
        //         }
        //     }
        // });
    });

}

