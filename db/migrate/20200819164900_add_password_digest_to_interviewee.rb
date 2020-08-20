class AddPasswordDigestToInterviewee < ActiveRecord::Migration[6.0]
  def change
    add_column :interviewees, :password_digest, :string
  end
end
