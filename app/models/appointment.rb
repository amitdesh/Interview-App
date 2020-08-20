class Appointment < ApplicationRecord
    belongs_to :interviewee
    belongs_to :interviewer
    belongs_to :language
    belongs_to :interview_type
    validates :interviewer_id, :date, :link, :difficulty, :interview_type_id, :language_id, presence: true
    validates :difficulty, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 10}


    def date_clean
       self.date.strftime("%m/%d/%Y, %H:%M")
    end

    def int_type
        self.interview_type.interview_type
    end

    def appt_range
        start = self.date
        finish = self.date + 1.hour
        start..finish
    end

  


end
