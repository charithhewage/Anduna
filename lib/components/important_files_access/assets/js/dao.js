var controllers ={
  importnt_access_data_group_by_id: "lib/components/important_files_access/controllers/importnt_access_data_group_by_id.jag",
  important_file_access_data: "lib/components/important_files_access/controllers/important_file_access_data.jag",

}

function get_data_grup_by_ip(chart){

console.log("inside get_important_file_accessed_data_grp_by_ip");

    $.getJSON(controllers.importnt_access_data_group_by_id , function (response){
        console.log(" impornt file grup by ip  working");

        var dataset = [];

        $.each(response, function (key, val) {

            dataset.push({name : val.clientIpAddress,value : val.totalcount});
            console.log("name"+dataset.name);
            console.log("value"+dataset.value);
            
    
        });

            if(chart==1){
                drawImportantFileAccessBarChart(dataset);
            }
            else if (chart==2){
                drawImportantFileAccessPieChart(dataset);
            }

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
            info += val.clientIpAddress+" "+ val.date_time +" "+ val.requestedFile + " "+ val.resultCode +" "+ val.size +" "+ val.url +" "+ val.browserInfo;
            info+="<br>";
            info+="<br>";
        });

        bootbox.dialog({
            message: info,
            title: "Access Log full info within last hour",
            buttons: {
                close: {
                    label: "Close",
                    className: "btn-primary",
                    callback: function() {
                    }
                }
            }
        });
    });

}
