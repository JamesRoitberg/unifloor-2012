$(document).ready(function(){
	//Validation
	if($('#new_customer').length){
		$('#new_customer').validate();
		if($('#new_customer #customer_name').length){
			$('#new_customer #customer_name').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo nome obrigatório."
				}
			});
		}
		if($('#new_customer #customer_address').length){
			$('#new_customer #customer_address').rules("add", {
				required        : true,
				email           : true,
				messages        : {
				  	required: "Campo email obrigatório.", 
				  	email: "Campo email inválido."
				}
			});
		}
		if($('#new_customer #customer_cep').length){
			$('#new_customer #customer_cep').rules("add", {
				required        : true,
				digits			: true,
				messages        : {
				  	required: "Campo Cep obrigatório.", 
				  	digits: "Apenas dígitos"		
				}
			});
		}
		if($('#new_customer #customer_city').length){
			$('#new_customer #customer_city').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo Cidade obrigatório.", 
				}
			});
		}
		if($('#new_customer #customer_uf').length){
			$('#new_customer #customer_uf').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo Uf obrigatório.", 
				}
			});
		}
		if($('#new_customer #customer_phone').length){
			$('#new_customer #customer_phone').rules("add", {
				required        : true,
				digits			: true,
				messages        : {
				  	required: "Campo Telefone obrigatório.",
				  	digits: "Apenas dígitos"
				}
			});
		}
		if($('#new_customer #customer_neighborhood').length){
			$('#new_customer #customer_neighborhood').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo Bairro obrigatório.", 
				}
			});
		}
	}	

})