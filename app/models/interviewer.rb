class Interviewer < ApplicationRecord
    has_many :appointments
    has_many :interviewees, through: :appointments
    belongs_to :language

    def total_money_earned
        no_of_appt = self.appointments.count{|appt| appt if appt.interviewer == self}
        self.interview_price * no_of_appt
    end

    def prog_language
        self.language.prog_lang
    end
    
    def upcoming_appt_times
        appts = self.appointments.select{|appt| appt if appt.interviewer == self}
    end






end
