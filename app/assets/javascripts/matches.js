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
});
$(document).on('click', '.add-game', function(e){
	$.getJSON("", {addGame: true}, function(data){
		console.log(data);
	});
	return false;
});
