# Create dummy data
list_names = []
5000.times do
  gimei_name = Gimei.name
  next if list_names.include?(gimei_name.last.romaji)
  list_names << gimei_name.last.romaji
  LastName.create(
    by_kanji: gimei_name.last.kanji,
    by_romaji: gimei_name.last.romaji,
    by_hiragana: gimei_name.last.hiragana,
    by_katakana: gimei_name.last.katakana
  )
end

