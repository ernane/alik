class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    begin
      @contact = Contact.new(params[:contact])
      @contact.request = request
      if @contact.deliver
        redirect_to root_path, notice: t("flash.sendmail.notice")
      else
        render "new"
      end
    rescue ScriptError
      flash[:error] = t("flash.sendmail.error")
    end
  end
end
