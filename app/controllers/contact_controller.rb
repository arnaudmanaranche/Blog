class ContactController < ApplicationController
    def create
        @message = Message.new(message_params)
        if @message.save
            redirect_to message_path,
                notice: "Message sent"
        else
            render 'new', layout: "admin"
        end
    end
    def index
        @message = Message.new
        @page_title = "Forknite - Nous contacter"
    end
end
