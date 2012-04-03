class Message < ActiveRecord::Base
	validates_presence_of :name, :message => "Digite seu nome"
	validates_presence_of :mail, :message => "Digite seu E-mail"
	validates_presence_of :message, :message => "Digite uma menssagem"
end
