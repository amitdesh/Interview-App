class Appointment < ApplicationRecord
    belongs_to :language
    belongs_to :interviewee
    belongs_to :interviewer
end
