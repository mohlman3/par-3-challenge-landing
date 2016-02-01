class LandingMailer < ActionMailer::Base
  default from: 'Par3Challenge <no-reply@par3challenge.com>'

  def suggest_course(name, city, state)
    @name = name
    @city = city
    @state = state

    mail(
        to: 'bobby.keene@icloud.com',
        subject: '[Par 3 Challenge] Course Suggestion',
        template_path: 'home',
        template_name: 'mailer')
  end
end