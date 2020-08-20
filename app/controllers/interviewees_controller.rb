class IntervieweesController < ApplicationController
    before_action :find_interviewee, only: [:show, :edit, :update, :destroy]
    skip_before_action :authorize_interviewee, only: [:new, :create]
    #skip_before_action :authorize_interviewer
    

    def index
        @interviewees = Interviewee.all
    end
    
    def show
    end
    
    def new
        @interviewee = Interviewee.new
        @languages = Language.all
    end
    
    def create
        @interviewee = Interviewee.create(interviewee_params)
        if @interviewee.valid?
            session[:interviewee_id] = @interviewee.id
            redirect_to interviewee_path(@interviewee)
        else
            flash[:my_errors] = @interviewee.errors.full_messages
            render :new
        end
    end

    def edit
    end
    
    def update
        @interviewee.update(interviewee_params)
        redirect_to interviewee_path(@interviewee)
    end
    
    def destroy
        @interviewee.destroy
        redirect_to welcome_path
    end

    private

    def interviewee_params
        params.require(:interviewee).permit(:name, :age, :username, :password)
    end

    def find_interviewee
        @interviewee = Interviewee.find(params[:id])
    end

end
