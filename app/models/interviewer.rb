class Interviewer < ApplicationRecord
    has_many :appointments
    has_many :interviewees, through: :appointments
    has_many :languages
    has_many :interviewers, through: :languages
end
