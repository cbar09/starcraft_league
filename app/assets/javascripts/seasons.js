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
		matches = {};
		
		$("td.match").each(function(i, elt){
			var td = $(this);
			var players = td.find(".filled");
			
			if(players.length == 2)
			{
				matches[i] = 
					{
						week: $(this).data("week"), 
						p1: players.first().data("player-id"), 
						p2: players.last().data("player-id")
					}
			}
		});
		//console.log(matches);
		jQuery.post(window.location.pathname, {matches: matches}, function(data){
			console.log(data);
		});
	});
});