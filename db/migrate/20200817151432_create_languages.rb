class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :programming_languages

      t.timestamps
    end
  end
end
