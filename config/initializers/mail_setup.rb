#config/initializers/mail_setup.rb

ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "unifloor.com.br",  
  :user_name            => "contato@idea4b.com.br",  
  :password             => "loldesign2011",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}

ActionMailer::Base.default_url_options[:host] = "http://www.idea4b.com.br"
