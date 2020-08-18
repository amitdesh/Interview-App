class CreateInterviewTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :interview_types do |t|
      t.string :interview_type

      t.timestamps
    end
  end
end
