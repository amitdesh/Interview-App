class Language < ApplicationRecord
    has_many :appointments
    has_many :interviewees, through: :appointments
    has_many :interviewers, through: :appointments
end
