$(document).ready(function(){
	//Validation
	if($('#new_product').length){
		$('#new_product').validate();
		if($('#new_product #product_name').length){
			$('#new_product #product_name').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo nome obrigatório."
				}
			});
		}
	}	
});
