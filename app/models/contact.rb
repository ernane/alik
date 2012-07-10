class Contact < MailForm::Base
  attributes :name, :email
   def headers
    {
      :to => "ernane.sena@gmail.com",
      :subject => "User created an account"
    }
  end
end
