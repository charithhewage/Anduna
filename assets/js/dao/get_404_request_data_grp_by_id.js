function get_404_request_data_grup_by_ip(chart){

console.log("inside get_404_request_data_grp_by_ip");

    $.getJSON("controllers/404request_data_group_by_ip.jag" , function (response){
        console.log("get_404_request_data_grp_by_ip_working");

        var alldata = [];

        $.each(response, function (key, val) {
            
            alldata.push({name : val.clientIpAddress,value : val.totalcount});

        });

        if(chart==1){
        	draw404RequestBarChart(alldata);
        }
        else if(chart==2){
        	draw404PieChart(alldata);
        }

    });
}




