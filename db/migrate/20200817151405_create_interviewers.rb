class CreateInterviewers < ActiveRecord::Migration[6.0]
  def change
    create_table :interviewers do |t|
      t.string :name
      t.integer :years_of_experience
      t.string :current_role
      t.string :current_company
      t.float :interview_price

      t.timestamps
    end
  end
end
