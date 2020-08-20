class AddPasswordDigestToInterviewer < ActiveRecord::Migration[6.0]
  def change
    add_column :interviewers, :username, :string
    add_column :interviewers, :password_digest, :string
  end
end
