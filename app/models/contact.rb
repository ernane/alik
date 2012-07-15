class Contact < MailForm::Base

  attribute :name,      :validate => true
  attribute :email,     :validate => true
  validates_format_of   :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :nickname,  :captcha => true
  attribute :message

  def headers
    {
      :to => "ernane.sena@gmail.com",
      :subject => "Email de contato - Alik",
      :from => %("#{name}" <#{email}>)
    }
  end
end
