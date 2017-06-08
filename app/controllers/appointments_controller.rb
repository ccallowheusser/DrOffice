class AppointmentsController < ApplicationController

  def new
    @doctors = Doctor.all.map { |r| [r.lastNameD, r.firstNameD, r.id] }
    @patients = Patient.all.map { |i| [i.lastNameP, i.firstNameP, i.id] }
    @appointment = Appointment.new
      
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def destroy
    appointment = Appointment.find(params[:id])
    appointment.destroy
    redirect_to doctor_path(appointment.doctor_id)
  end


  private
    def appointment_params
        params.require(:appointment).permit(:doctor_id, :patient_id, :description, :date, :time)
    end
end
