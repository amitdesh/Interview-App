class Interviewee < ApplicationRecord
    has_many :appointments
    has_many :interviewers, through: :appointments
    has_many :languages, through: :appointments

    def total_spent
        self.interviewers.sum{|interviewer| interviewer.interview_price}
    end

    def most_popular_language
        prog_object = self.languages.max_by(1){|lang| lang.appointments.count}
        prog_object[0].prog_lang
    end

    def most_popular_language_count
        self.languages.count{|lang| lang.appointments if lang.prog_lang == self.most_popular_language}
    end

    def most_popular_interviewer
        inter_object = self.interviewers.max_by(1){|interviewer| interviewer.appointments.count}
        inter_object[0].name
    end

    def most_popular_interviewer_count
        self.interviewers.count{|interviewer| interviewer.appointments if interviewer.name == self.most_popular_interviewer}
    end



end
