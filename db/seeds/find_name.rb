# Create dummy data
100.times do
  gimei_name = Gimei.name
  FindName.create(
    name_type: Faker::Number.between(1, 3),
    by_kanji: gimei_name.first.kanji,
    by_romaji: gimei_name.first.romaji,
    by_katakana: gimei_name.first.katakana
  )
end
