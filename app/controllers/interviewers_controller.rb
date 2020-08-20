class InterviewersController < ApplicationController
    before_action :find_interviewer, only: [:show, :edit, :update, :destroy]
    skip_before_action :authorize_interviewee


    def index
        @interviewers = Interviewer.all
    end

    def show

    end

    def new
        @interviewer = Interviewer.new
        @languages = Language.all
    end
    
    def create
        @interviewer = Interviewer.create(interviewer_params)
        if @interviewer.valid?
            session[:interviewer_id] = @interviewer.id
            redirect_to interviewer_path(@interviewer)
        else
            flash[:my_errors] = @interviewer.errors.full_messages
            render :new
        end
    end

    def edit

    end

    def update
        @interviewer.update(interviewer_params)
        redirect_to interviewer_path(@interviewer)
    end

    def destroy
        @interviewer.destroy
        redirect_to welcome_path
    end

    private

    def interviewer_params
        params.require(:interviewer).permit(:name, :current_role, :current_company, :years_of_experience, :interview_price, :language_id, :username, :password)
    end

    def find_interviewer
        @interviewer = Interviewer.find(params[:id])
    end


end
