class RemoveIdsFromLanguages < ActiveRecord::Migration[6.0]
  def change
    remove_column :languages, :interviewer_id
    remove_column :languages, :interviewee_id
  end
end
