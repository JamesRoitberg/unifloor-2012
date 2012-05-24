$(document).ready(function(){
	//Validation
	if($('#new_stock').length){
		$('#new_stock').validate();
		if($('#new_stock #stock_code').length){
			$('#new_stock #stock_code').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo Codigo obrigatório."
				}
			});
		}
		if($('#new_stock #stock_status').length){
			$('#new_stock #stock_status').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo Status obrigatório."
				}
			});
		}
		if($('#new_stock #stock_amount').length){
			$('#new_stock #stock_amount').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo Quantidade obrigatório."
				}
			});
		}
	}	
});	
