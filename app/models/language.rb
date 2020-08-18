class Language < ApplicationRecord
    has_many :interviewers
    has_many :appointments
    has_many :interviewees, through: :appointments
end
