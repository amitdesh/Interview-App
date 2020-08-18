class ChangeInterviewTypeToId < ActiveRecord::Migration[6.0]
  def change
    remove_column :appointments, :interview_type
    add_column :appointments, :interview_type_id, :integer
  end
end
