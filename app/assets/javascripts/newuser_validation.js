$(document).ready(function(){
	//Validation
	if($('#new_user').length){
		$('#new_user').validate();
		if($('#new_user #user_name').length){
			$('#new_user #user_name').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo nome obrigatório."
				}
			});
		}
		if($('#new_user #user_email').length){
			$('#new_user #user_email').rules("add", {
				required        : true,
				email           : true,
				messages        : {
				  	required: "Campo email obrigatório.", 
				  	email: "Campo email inválido."
				}
			});
		}
		if($('#new_user #user_password').length){
			$('#new_user #user_password').rules("add", {
				required        : true,
				minlength       : 6,
				messages        : {
				  	required: "Campo senha obrigatório.", 
				  	minlength: "A senha deve conter no mínimo 6 dígitos."
				}
			});	
		}
		if($('#new_user #user_password_confirmation').length){
			$('#new_user #user_password_confirmation').rules("add", {
				required        : true,
				minlength       : 6,
				equalTo         : "#user_password",
				messages        : {
				  	required: "Campo senha obrigatório.", 
				  	minlength: "A senha deve conter no mínimo 6 dígitos.",
				  	equalTo: "As senhas não conferem."
				}
			});
		}
		if($('#new_user #user_representative_attributes_cpf').length){
			$('#new_user #user_representative_attributes_cpf').rules("add", {
				required        : true,
				digits			: true,
				messages        : {
				  	required: "Campo CPF obrigatório.", 
				  	digits: "Apenas dígitos"			  	
				}
			});
		}
		if($('#new_user #user_representative_attributes_rg').length){
			$('#new_user #user_representative_attributes_rg').rules("add", {
				required        : true,
				digits			: true,
				messages        : {
				  	required: "Campo Rg obrigatório.", 
				  	digits: "Apenas dígitos"			  	
				}
			});
		}
		if($('#new_user #user_representative_attributes_address').length){
			$('#new_user #user_representative_attributes_address').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo endereço obrigatório.", 
				}
			});
		}
		if($('#new_user #user_representative_attributes_neighborhood').length){
			$('#new_user #user_representative_attributes_neighborhood').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo Bairro obrigatório.", 
				}
			});
		}
		if($('#new_user #user_representative_attributes_cep').length){
			$('#new_user #user_representative_attributes_cep').rules("add", {
				required        : true,
				digits			: true,
				messages        : {
				  	required: "Campo Cep obrigatório.", 
				  	digits: "Apenas dígitos"		
				}
			});
		}
		if($('#new_user #user_representative_attributes_city').length){
			$('#new_user #user_representative_attributes_city').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo Cidade obrigatório.", 
				}
			});
		}
		if($('#new_user #user_representative_attributes_uf').length){
			$('#new_user #user_representative_attributes_uf').rules("add", {
				required        : true,
				messages        : {
				  	required: "Campo Uf obrigatório.", 
				}
			});
		}
		if($('#new_user #user_representative_attributes_phone').length){
			$('#new_user #user_representative_attributes_phone').rules("add", {
				required        : true,
				digits			: true,
				messages        : {
				  	required: "Campo Telefone obrigatório.",
				  	digits: "Apenas dígitos"
				}
			});
		}
		if($('#new_user #user_representative_attributes_cellphone').length){
			$('#new_user #user_representative_attributes_cellphone').rules("add", {
				required        : true,
				digits			: true,
				messages        : {
				  	required: "Campo Celular obrigatório.",
				  	digits: "Apenas dígitos"
				}
			});
		}
	}
})