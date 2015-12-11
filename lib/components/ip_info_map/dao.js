function drawIpMap(dataset){

	console.log(" map draw");

	var map = L.map('ip-map', {
    			  center: [51.505, -0.09],
    			  zoom: 2,
			  minZoom : 2
			  });



		L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6IjZjNmRjNzk3ZmE2MTcwOTEwMGY0MzU3YjUzOWFmNWZhIn0.Y8bhBaUMqFiPrDRW9hieoQ', {
			maxZoom: 18,
			attribution: '',
			id: 'mapbox.streets'
		}).addTo(map);

	$.getJSON("http://freegeoip.net/json/"+ dataset.clientIpAddress , function(data) {

	console.log(val.totalcount);

	L.circle([ data.latitude , data.longitude ], 50000 * dataset.totalcount , {
			color: 'red',
			fillColor: '#f03',
			fillOpacity: 0.5
		}).addTo(map).bindPopup("I am a circle.");
            
        });

	L.polygon([
			[51.509, -0.08],
			[51.503, -0.06],
			[51.51, -0.047]
		]).addTo(map).bindPopup("I am a polygon.");


		var popup = L.popup();

		function onMapClick(e) {
			popup
				.setLatLng(e.latlng)
				.setContent("You clicked the map at " + e.latlng.toString())
				.openOn(map);
		}

		map.on('click', onMapClick);

}

function get_data_for_map(){

console.log("get_data_for_map");

    $.getJSON("lib/components/important_files_access/controllers/importnt_access_data_group_by_id.jag" , function (response){

        var dataset = [];

        $.each(response, function (key, val) {

            dataset.push({clientIpAddress : val.clientIpAddress,totalcount : val.totalcount});     
    
        });

        	console.log(dataset);
        	drawIpMap(dataset);

    });
}

get_data_for_map();
