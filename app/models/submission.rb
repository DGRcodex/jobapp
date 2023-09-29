# app/models/submission.rb
class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :job_offer
end
