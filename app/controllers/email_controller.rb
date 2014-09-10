class EmailController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => [:create]

  def create
    sender = EmailParser.sender(params)
    email_body = EmailParser.content(params)

    response = "<h1>Hello and thank you for using... <strong>Should I Send This?</strong></h1>"

    alchemist = AlchemyData.new(email_body)

    if alchemist
      sentiment = (alchemist.sentiment*100).floor
      concepts = alchemist.concepts
      keywords = alchemist.keywords

      if sentiment > 0
        response << "<h2>Your email is #{sentiment}% <span style='color:#00FF00;'>positive</span>.</h2>"
      else
        response << "<h2>Your email is #{sentiment.abs}% <span style='color:#FF0000;'>negative</span>.</h2>"
      end

      response << "<h2>Your main concept is: '#{concepts.first}'</h2>"

      response << "<h2>Your keywords are: "
      keywords.each { |keyword| response << "'#{keyword}' " }
      response << ".</h2>"

    else
      response << "<h2>Should I Send This? ...is down for maintenance. Try again later!</h2>"
    end

    response << "<h3>Below is the content of your email:</h3>"
    response << "<p>"
    response << email_body
    response << "</p>"

    UserMailer.email(sender, response).deliver

    redirect_to :root, status: 200
  end
end


