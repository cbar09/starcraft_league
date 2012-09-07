//Event Handler to make sure we only click on two players for this match
$(document).on("click", ".winner", function(e){
	if($(this).is(":checked")){
		$(this).closest("fieldset").find(".winner").not($(this)).attr("disabled", "disabled");
	}
	else{
		$(this).closest("fieldset").find(".winner").removeAttr("disabled");
	}
})
.on("change", ".race", function(e){
	checked = $(this).find("option:selected");
	checked.closest("fieldset").find("option[value='" + checked.val() + "']").not(checked).attr("disabled", "disabled")
})
.on("change", ".player", function(e){
	if($('.player:checked').length == 2){
		$('.player').not(':checked').attr('disabled', 'disabled');
	}
	else{
		$('.player').not(':checked').removeAttr('disabled');
	}
})
.on("change", ".winner", function(e){
	box = $(this);
	row = box.closest("tr");
	
	if(box.is(":checked")){
		row.find("input[type='checkbox']").not(":checked").attr("disabled", "disabled")
	}
	else{
		row.find("input[type='checkbox']").removeAttr("disabled");
	}
})
/*.on("submit", "form[id^='edit_match']", function(e){
	var p1_wins = 0, p2_wins = 0;
	var input_errors = false;
	
	$("tbody tr").each(function(i){
		row = $(this);
		winner = row.find(".winner:checked");
		if(!winner.length && p1_wins < 3 && p2_wins < 3){
			alert("No winner selected for game " + (i+1) + ".");
			input_errors = true;
			return false;
		}
		else{
			if(p1_wins == 3 || p2_wins == 3){
				alert("Game " + (i+1) + " is unnecessary.");
				input_errors = true;
				return false;
			}
			else{
				row.find(".winner:first") == winner ? p1_wins++ : p2_wins++;
			}
		}
	});
	if(p1_wins <= 3 && p2_wins <= 3){
		alert("Incomplete match results. No player has won 3 games");
		input_errors = true;
	}
	if(input_errors){
		e.preventDefault();
		return false;
	}
})*/
.ready(function(){
	$("div.controls").first().find("label:eq(4)").after("<hr>");
	
	//Disable all checkboxed in rows where winner is already checked
	$(".winner:checked").each(function(i){ 
		row = $(this).closest("tr"); 
		row.find(".winner").not(":checked").attr("disabled", "disabled");
	});
});

function get_p1_wins(){
	p1_wins = 0;
	$("tbody tr").each(function(i){ 
		if($(this).find(".winner:first").is(":checked")) {
			p1_wins++;
		}
	});
	return p1_wins;
}

function get_p2_wins(){
	p2_wins = 0;
	$("tbody tr").each(function(i){ 
		if($(this).find(".winner:first").is(":checked")) {
			p2_wins++;
		}
	});
	return p2_wins;
}

function need_game_four(){
	return get_p1_wins() < 3 && get_p2
}
