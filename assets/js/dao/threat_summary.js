function threatSummary(){
	
	console.log(" inside threat Summary");
    	$.getJSON("controllers/threat_summary.jag" , function (response){
        	console.log(" Data  Recieved");

		var i = 0;
        $.each(response, function (key,val){

        	$.each(val,function (k,v){
        		
        		var panel = document.getElementById("panel4");
				var list = panel.getElementsByTagName("small");
				list[i].innerHTML = k + " : " + v ;
				i++;
        	});
        });
			
        });
}


threatSummary();
