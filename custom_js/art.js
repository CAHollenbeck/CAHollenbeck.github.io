var arts = {"nhtwm": "Non-Hygienic Tree-Walking Macro",
			"ieq":"I've Been Thinking A Lot About Inequality Lately",
			"giants":"Giants Walk the Streets While We're Sleeping",
			"comedian":"The Comedian",
			"martini":"The Martini",
			"shapescape":"Shapescape",
			"jl":"Just Looking",
			"kid":"Some Kid I Drew",
			"cockroach":"Lipstick on a Cockroach",
			"joey":"Joey",
			"nirvana":"Nirvana",
			"business":"It's Just Business",
			"cat":"I Love My Big Orange Cat",
			"fly":"Fly By Night"};

function art_click(event, name) {
	var artname = arts[name];
	var artimg = "<img src=\"images/" + name + ".jpg\" width=\"100%\"/>";

	$("#modbod").html(artimg);
	$("#myModal").modal("show");
	$("#myModalLabel").html(artname);
}