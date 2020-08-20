class ApplicationController < ActionController::Base
    before_action :set_current_interviewee
    before_action :authorize_interviewee
    #before_action :authorize_interviewer
    
    def set_current_interviewee
        @current_interviewee = Interviewee.find_by(id: session[:inteviewee_id])
    end

    def authorize_interviewee
        redirect_to interviewee_path unless set_current_interviewee
    end

    def set_current_interviewer
        @current_interviewer = Interviewer.find_by(id: session[:inteviewer_id])
    end

    def authorize_interviewer
        redirect_to welcome_path unless set_current_interviewer
    end


end
