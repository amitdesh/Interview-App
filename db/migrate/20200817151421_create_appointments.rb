class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :interviewee_id
      t.integer :interviewer_id
      t.integer :language_id
      t.datetime :date
      t.string :note
      t.string :link
      t.integer :difficulty
      t.string :type

      t.timestamps
    end
  end
end
