class Contact < MailForm::Base
  attributes :name, :email
  def headers
    {
      :to => "ernane.sena@gmail.com",
      :subject => "User created an account"
    }
  end

  def deliver_background
    self.deliver
  end

  handle_asynchronously :deliver_background, :run_at => Proc.new { 1.minutes.from_now }
end
