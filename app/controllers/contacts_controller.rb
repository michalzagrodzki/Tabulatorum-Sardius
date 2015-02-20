class ContactsController < ApplicationController

  # Function for creating new contact mail
  def new
    @contact = Contact.new
  end

  # Function for validating email
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    # Message of success or failure
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for contacting with us.'
    else
      flash.nowp[:error] = 'Cannot send message, try again.'
      render :new
    end

  end
end
