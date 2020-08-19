class Appointment < ApplicationRecord
    belongs_to :interviewee
    belongs_to :interviewer
    belongs_to :language
    belongs_to :interview_type



    def date_clean
       self.date.strftime("%m/%d/%Y, %H:%M")
    end

    def int_type
        self.interview_type.interview_type
    end







end
