var c = "lib/components/sample/con.jag"
var data = { name: "Charith", address: "Tangalle", uni: "Uni of Moratuwa"}

function samplefunc(){
	console.log('sdfsdfjsdlfkjsdlfkjdslfkjlsdkfjldskfj');
	$.post(c, data, function(response) {
	    // Do something with the request
	    console.log('dsdsdfsdfdsf');
	}, 'json');
}

a();