class MessagesController < ApplicationController
	def create
		@message = Message.new(params[:message])
		if @message.save
			UnifloorContact.mail_contact(@message).deliver
			redirect_to message_path(@message)
		else
			redirect_to :back
		end
	end

	def show
		@message = Message.find(params[:id])
		
	end
end
