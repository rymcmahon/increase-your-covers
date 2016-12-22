class AssessmentRequestsController < ApplicationController
  invisible_captcha only: [:create], honeypot: :subtitle

  def new
    @assessment_request = AssessmentRequest.new
  end

  def create
    @assessment_request = AssessmentRequest.new(assessment_request_params)

    if @assessment_request.save
      CriticMailer.critic_notification(@assessment_request).deliver_now
      flash[:notice] = "Thanks for requesting a review from the Website Critic! He will email your review shortly."
      redirect_to :root
    else
      render 'new'
    end
  end

  private
    def assessment_request_params
      params.require(:assessment_request).permit(:first_name, :email, :url)
    end
end
