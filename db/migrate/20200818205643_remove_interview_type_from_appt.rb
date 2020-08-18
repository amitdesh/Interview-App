class RemoveInterviewTypeFromAppt < ActiveRecord::Migration[6.0]
  def change
    remove_column :appointments, :interview_type
  end
end
