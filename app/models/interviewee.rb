class Interviewee < ApplicationRecord
    has_many :appointments
    has_many :interviewers, through: :appointments
    has_many :languages
    has_many :interviewers, through: :languages

end
