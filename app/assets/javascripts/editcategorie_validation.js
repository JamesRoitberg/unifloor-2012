$(document).ready(function(){
	//Validation
	if($('.edit_category').length){
		$('.edit_category').validate();
		if($('.edit_category #category_name').length){
			$('.edit_category #category_name').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo nome obrigatório."
				}
			});
		}
	}	
});
