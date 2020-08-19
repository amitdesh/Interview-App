class AppointmentsController < ApplicationController
    before_action :find_appt, only: [:edit, :update, :destroy]
                  
    def new
        @appointment = Appointment.new
        @interviewees = Interviewee.all
        @interviewers = Interviewer.all
        @languages = Language.all
        @interviewtypes = InterviewType.all
    end
        
    def create
        @appointment = Appointment.create(appointment_params)
        # interviewee.appointments.build(@appointment)
        # redirect_to interviewee_path(@appointment.interviewee.id)
    end
    
    def edit
    end
        
    def update
        @appointment.update(appointment_params)
        redirect_to interviewee_path(@appointment.interviewee.id)
    end
        
    def destroy
        @appointment.destroy
        redirect_to interviewee_path(@interviewee)
    end

    def get_interviewers
        @language = Language.find(params[:language_id])
        @interviewers = @language.interviewers
      end
    
    private
    
    def appointment_params
        params.require(:appointment).permit(:interviewee_id, :interviewer_id, :language_id, :date, :note, :link, :difficulty, :interview_type)
    end

    def find_appt
        @appointment = Appointment.find(params[:id])
    end

end
    
