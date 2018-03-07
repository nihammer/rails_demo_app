# Create dummy data
list_names = []
10000.times do
  gimei_name = Gimei.male
  next if list_names.include?(gimei_name.first.romaji)
  list_names << gimei_name.first.romaji
  FirstName.create(
    gender: FirstName::Gender::MALE,
    by_kanji: gimei_name.first.kanji,
    by_romaji: gimei_name.first.romaji,
    by_hiragana: gimei_name.first.hiragana,
    by_katakana: gimei_name.first.katakana
  )
end

10000.times do
  gimei_name = Gimei.female
  next if list_names.include?(gimei_name.first.romaji)
  list_names << gimei_name.first.romaji
  FirstName.create(
    gender: FirstName::Gender::FEMALE,
    by_kanji: gimei_name.first.kanji,
    by_romaji: gimei_name.first.romaji,
    by_hiragana: gimei_name.first.hiragana,
    by_katakana: gimei_name.first.katakana
  )
end
