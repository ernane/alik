class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      @contact.deliver
      redirect_to root_path, notice: 'Article was successfully created.'
    else
      render "new"
    end
  end
end
