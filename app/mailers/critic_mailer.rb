class CriticMailer < ApplicationMailer
  default from: 'ryan@covercentric.com'

  def critic_notification(assessment_request)
    @assessment_request = assessment_request
    mail(to: 'ryan@covercentric.com', subject: 'New Website Assessment Request')
  end
end
