class Language < ApplicationRecord
    belongs_to :interviewers
    belongs_to :interviewees
end
