class EmailController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => [:create]

  def create
    sender = EmailParser.sender(params)
    email_body = EmailParser.content(params)

    response = "Hello and thank you for using Should I Send This?"
    response << "\n\n"

    alchemist = AlchemyData.new(email_body)

    if alchemist
      sentiment = (alchemist.sentiment*100).floor

      if sentiment > 0
        response << "Your email is #{sentiment}% positive.  If you are happy with this, please send!"
      else
        response << "Your email is #{sentiment.abs}% negative.  Please consider a revision!"
      end
    else
      response << "Should I Send This? ...is down for maintenance. Try again later!"
    end

    response << "\n\n\n\n"
    response << "Below is the content of your email:"
    response << "\n\n"
    response << email_body

    UserMailer.email(sender, response).deliver

    redirect_to :root, status: 200
  end
end


