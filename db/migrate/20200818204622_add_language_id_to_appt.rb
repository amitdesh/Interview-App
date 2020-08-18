class AddLanguageIdToAppt < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :language_id, :integer
  end
end
