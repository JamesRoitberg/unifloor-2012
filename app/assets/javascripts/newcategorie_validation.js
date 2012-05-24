$(document).ready(function(){
	//Validation
	if($('#new_category').length){
		$('#new_category').validate();
		if($('#new_category #category_name').length){
			$('#new_category #category_name').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo nome obrigatório."
				}
			});
		}
	}	
});
