class Appointment < ApplicationRecord
    belongs_to :interviewee
    belongs_to :interviewer
    belongs_to :language
    belongs_to :interview_type
end
