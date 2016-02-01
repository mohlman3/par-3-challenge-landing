class HomeController < ApplicationController
  def index

  end

  def suggest
    name = params.require(:name)
    city = params.require(:city)
    state = params.require(:state)

    LandingMailer.suggest_course(name, city, state).deliver

    flash[:message] = 'Thank you for your suggestion! We will work to bring the Par 3 Challenge to that course!'
    redirect_to '/#suggestion-form'
  end
end