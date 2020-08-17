class CreateInterviewers < ActiveRecord::Migration[6.0]
  def change
    create_table :interviewers do |t|

      t.timestamps
    end
  end
end
