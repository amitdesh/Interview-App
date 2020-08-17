class ChangeTypeName < ActiveRecord::Migration[6.0]
  def change
    rename_column :appointments, :type, :interview_type
  end
end
