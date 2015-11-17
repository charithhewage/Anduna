function hitsSummary(){

	console.log(" inside hitsSummary");
    	$.getJSON("controllers/hits_summary.jag" , function (response){
        	console.log(" Data  Recieved");

		var i = 0;
        $.each(response, function (key,val){

        	$.each(val,function (k,v){
        		
        		var panel = document.getElementById("panel2");
				var list = panel.getElementsByTagName("small");
				list[i].innerHTML = k + " : " + v ;
				i++;
        	});
        });
			
        });
}


hitsSummary();