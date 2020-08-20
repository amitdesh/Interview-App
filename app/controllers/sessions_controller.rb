class SessionsController < ApplicationController
    skip_before_action :authorize_interviewee, only: [:new, :create]

    def logout_interviewee
        session.delete(:interviewee_id)
        redirect_to welcome_path
    end


    def new

    end

    def create
        @interviewee = Interviewee.find_by(username: params[:session][:username])

        if @interviewee && @interviewee.authenticate(params[:session][:password])
            session[:interviewee_id] = @interviewee.id
            redirect_to interviewee_path(@interviewee)
        else
            flash[:my_errors] = "Username or password is incorrect"
            redirect_to new_interviewee_login_path
        end
    end

    def logout_interviewer
        session.delete(:interviewer_id)
        redirect_to welcome_path
    end

    def new_int
        render :new_int
    end
 
    def create_int
        @interviewer = Interviewer.find_by(username: params[:session][:username])

        if @interviewer && @interviewer.authenticate(params[:session][:password])
            session[:interviewer_id] = @interviewer.id
            redirect_to interviewer_path(@interviewer)
        else
            flash[:my_errors] = "Username or password is incorrect"
            redirect_to new_interviewer_login_path
        end
    end



end
