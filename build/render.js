var page = require('webpage').create(),
		output = phantom.args[0],
		viewportWidth = parseInt(phantom.args[1]) || 1200;

if (!output) {
	console.log("Usage: render.js <output file>");
	phantom.exit(-1);
}

page.viewportSize = {width: viewportWidth, height: 400};
page.open("http://localhost:3000", function(status) {
	if (!status) {
		console.log("Could not connect to server. Ensure you've run `rake server` prior to running this script.");
		phantom.exit(-1);
	}

	var viewport = page.evaluate(function() {
		return {
			width: document.body.clientWidth,
			height: document.body.clientHeight
		};
	});
	page.viewportSize = viewport;

	console.log("Rendering equip to", output);
	page.render(output);
	console.log("Done.");
	phantom.exit();
});