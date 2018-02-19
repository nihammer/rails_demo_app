class CreateFindNames < ActiveRecord::Migration[5.1]
  def change
    create_table :find_names do |t|
      t.integer :name_type
      t.string  :by_kanji
      t.string  :by_romaji
      t.string  :by_katakana

      t.timestamps
    end
  end
end
