class PublicController < ApplicationController
  layout "index"

  def index
    unless cookies[:seen_splash] == 'yes'
      @show_splash = true   #serve up one thing with jquery fade out
      cookies[:seen_splash] = 'yes'
    else

    end

  end

  def show

  end
end
