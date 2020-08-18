class Interviewee < ApplicationRecord
    has_many :appointments
    has_many :interviewers, through: :appointments
    has_many :languages, through: :appointments

end
