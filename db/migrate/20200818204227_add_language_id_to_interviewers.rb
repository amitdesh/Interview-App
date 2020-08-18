class AddLanguageIdToInterviewers < ActiveRecord::Migration[6.0]
  def change
    add_column :interviewers, :language_id, :integer
  end
end
