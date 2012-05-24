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
	}
})