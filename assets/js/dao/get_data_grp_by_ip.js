function get_data_grup_by_ip(chart){

console.log("inside get_important_file_accessed_data_grp_by_ip");

    $.getJSON("controllers/importnt_access_data_group_by_id.jag" , function (response){
        console.log(" impornt file grup by ip  working");

        var dataset = [];

        $.each(response, function (key, val) {

        	dataset.push({name : val.clientIpAddress,value : val.totalcount});
            
	
        });

            if(chart==1){
            	drawImportantFileAccessBarChart(dataset);
            }
            else if (chart==2){
            	drawImportantFileAccessPieChart(dataset);
            }

    });
}


