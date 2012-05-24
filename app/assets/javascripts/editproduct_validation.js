$(document).ready(function(){
	//Validation
	if($('.edit_product').length){
		$('.edit_product').validate();
		if($('.edit_product #product_name').length){
			$('.edit_product #product_name').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo nome obrigatório."
				}
			});
		}
	}	
});
