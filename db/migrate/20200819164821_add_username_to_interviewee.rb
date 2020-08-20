class AddUsernameToInterviewee < ActiveRecord::Migration[6.0]
  def change
    add_column :interviewees, :username, :string
  end
end
