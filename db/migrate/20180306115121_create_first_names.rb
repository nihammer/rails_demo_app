class CreateFirstNames < ActiveRecord::Migration[5.1]
  def change
    create_table :first_names do |t|
      t.integer :gender
      t.string  :by_kanji
      t.string  :by_romaji
      t.string  :by_hiragana
      t.string  :by_katakana

      t.timestamps
    end
  end
end
