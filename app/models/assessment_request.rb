class AssessmentRequest < ApplicationRecord
  validates :first_name, :email, :url, presence: true
end
