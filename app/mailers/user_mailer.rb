class UserMailer < ActionMailer::Base

  default from: 'notifications@avifoxitestthis.com'

  def email(sender, content)
    mail(to: sender,
         subject: 'Your Analyses From... Should I Send This?',
         content_type: "text/html",
         body: content)
  end
end
