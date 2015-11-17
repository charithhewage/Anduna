function visitsSummary(){
	
	console.log(" inside visitsSummary");
    	$.getJSON("controllers/visits_summary.jag" , function (response){
        	console.log(" Data  Recieved");

		var i = 0;
        $.each(response, function (key,val){

        	$.each(val,function (k,v){
        		
        		var panel = document.getElementById("panel");
				var list = panel.getElementsByTagName("small");
				list[i].innerHTML = k + " : " + v ;
				i++;
        	});
        });
			
        });
}


visitsSummary();
