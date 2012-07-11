class Contact < MailForm::Base

  attribute :name,      :validate => true
  attribute :email,     :validate => true
  validates_format_of   :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :nickname, :captcha => true
  attribute :message

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
