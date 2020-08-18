class RemoveLanguageFromAppointments < ActiveRecord::Migration[6.0]
  def change
    remove_column :appointments, :language_id
  end
end
