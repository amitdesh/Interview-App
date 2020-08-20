class InterviewType < ApplicationRecord
    has_many :appointments
    validates :interview_type, uniqueness: true
end
