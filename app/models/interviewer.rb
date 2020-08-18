class Interviewer < ApplicationRecord
    has_many :appointments
    has_many :interviewees, through: :appointments
    belongs_to :language
end
