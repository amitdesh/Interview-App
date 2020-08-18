class Appointment < ApplicationRecord
    belongs_to :interviewee
    belongs_to :interviewer
end
