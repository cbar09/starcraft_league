$(document).ready(function(){
	$( ".draggable" ).draggable({
		appendTo: "body",
		helper: "clone"
	});
	
	$( "div.droppable" ).droppable({
		hoverClass: "well",  
		drop: function(event, ui){
			$(this)
				.text(ui.draggable.text())
				.data("player-id", ui.draggable.data("player-id"))
				.addClass("filled");
		}
	});
	
	$( "div.droppable.divA" ).droppable( "option", "accept", ".divA" );
	$( "div.droppable.divB" ).droppable( "option", "accept", ".divB" );
	
	$("a.save").click(function(evt){
		evt.preventDefault();
		
		var matches = 0;
		
		$("td.match").each(function(i, elt){
			var td = $(this);
			var players = td.find(".filled").length;
			
			if(players == 2)
			{
				td.prepend($("<div>")
					.addClass("alert alert-success")
					.prepend($("<strong>").text("Successfully saved match"))
				);
			}
			else if(players == 1)
			{
				td.prepend($("<div>")
					.addClass("alert alert-error")
					.prepend($("<strong>").text("Match needs 2 players"))
				);
			}
			else
			{
				td.prepend($("<div>")
					.addClass("alert alert-warn")
					.text("No match inputted")
				);
			}
			
		});
		
		alert(matches);
	});
})