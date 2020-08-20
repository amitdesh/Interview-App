class AppointmentsController < ApplicationController
    before_action :find_appt, only: [:edit, :update, :destroy]
    #skip_before_action :authorize_interviewer
    
                  
    def new
        @appointment = Appointment.new
        @interviewees = Interviewee.all
        @interviewers = Interviewer.all
        @languages = Language.all
        @interviewtypes = InterviewType.all
    end
        
    def create
        @appointment = @current_interviewee.appointments.create(appointment_params) #not working
        if @appointment.valid?
            redirect_to interviewee_path(@appointment.interviewee.id)
        else
            flash[:my_errors] = @appointment.errors.full_messages
            render :new
        end
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

    
    private
    
    def appointment_params
        params.require(:appointment).permit(:interviewer_id, :language_id, :date, :note, :link, :difficulty, :interview_type)
    end

    def find_appt
        @appointment = Appointment.find(params[:id])
    end

end
    
