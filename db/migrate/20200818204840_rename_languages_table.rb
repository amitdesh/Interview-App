class RenameLanguagesTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :languages, :programming_languages, :prog_lang
  end
end
