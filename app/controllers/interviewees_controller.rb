class IntervieweesController < ApplicationController
    before_action :find_interviewee, only: [:show, :edit, :update, :destroy]

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
        redirect_to interviewee_path(@interviewee)
    end

    def edit
    end
    
    def update
        @interviewee.update(interviewee_params)
        redirect_to interviewee_path(@interviewee)
    end
    
    def destroy
        @interviewee.destroy
        redirect_to interviewee_path(@interviewee)
    end

    private

    def interviewee_params
        params.require(:interviewee).permit(:name, :age)
    end

    def find_interviewee
        @interviewee = Interviewee.find(params[:id])
    end

end
