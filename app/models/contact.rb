class Contact < MailForm::Base

  # Set attributes for properties of email (validation)
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha => true

  # Set email headers. Accepts anything the mail method in ActionMailer accepts
  def header
    {
        :subject => 'Mail from Milion Stories Page',
        :to => 'mail@example.org',
        :from => %("#{name}" <#{email}>)
    }
  end

end