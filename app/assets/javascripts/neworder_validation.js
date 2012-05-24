$(document).ready(function(){
	//Validation
	if($('#new_order').length){
		$('#new_order').validate();
		if($('#new_order #order_code').length){
			$('#new_order #order_code').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo Codigo obrigatório."
				}
			});
		}
		if($('#new_order #order_price').length){
			$('#new_order #order_price').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo Preço obrigatório."
				}
			});
		}
	}	
});	
