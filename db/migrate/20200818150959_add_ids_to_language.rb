class AddIdsToLanguage < ActiveRecord::Migration[6.0]
  def change
    add_column :languages, :interviewer_id, :integer
    add_column :languages, :interviewee_id, :integer
  end
end
