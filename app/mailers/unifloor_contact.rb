class UnifloorContact < ActionMailer::Base
  default from: "from@example.com"
  
  def mail_contact( message )
  	@message = message
  	mail(:to => "james.roitberg@gmail.com", :subject => "Contato feito atravez do formulario")  
  end
end
