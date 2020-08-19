class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true


  def datetime
  Appointment.all.date.strftime("%m/%d/%Y, %H:%M:%S")
  end

end
