function onDocumentReady() {
	var powerGauge = gauge('#power-gauge', {
		size: 200,
		clipWidth: 200,
		clipHeight: 170,
		ringWidth: 60,
		maxValue: 10,
		transitionMs: 4000,
	});

	var memoryGauge = gauge('#memory-gauge', {
		size: 200,
		clipWidth: 200,
		clipHeight: 170,
		ringWidth: 60,
		maxValue: 10,
		transitionMs: 4000,
	});
	powerGauge.render();
	memoryGauge.render();
	
	function updateReadings() {
		// just pump in random data here...
		powerGauge.update(Math.random() * 10);
		memoryGauge.update(Math.random() * 10);
	}
	
	// every few seconds update reading values
	updateReadings();
	setInterval(function() {
		updateReadings();
	}, 5 * 1000);
}

if ( !window.isLoaded ) {
	window.addEventListener("load", function() {
		onDocumentReady();
	}, false);
} else {
	onDocumentReady();
}
