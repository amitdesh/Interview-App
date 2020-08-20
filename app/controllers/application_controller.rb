class ApplicationController < ActionController::Base
    before_action :set_current_interviewee
    before_action :authorize_interviewee, only: [:set_current_interviewer, :authorize_interviewer]
    
    def set_current_interviewee
        @current_interviewee = Interviewee.find_by(id: session[:interviewee_id])
    end

    def authorize_interviewee
        redirect_to welcome_path unless set_current_interviewee
    end

    def set_current_interviewer
        @current_interviewer = Interviewer.find_by(id: session[:interviewer_id])
    end

    def authorize_interviewer
        redirect_to welcome_path unless set_current_interviewer
    end


end
