class SearchController < ApplicationController

  MAX_NUMBER_OF_NAME_GENERATE = 10

  def search
    search_key = params[:q]
    columns = ["by_kanji", "by_romaji", "by_hiragana", "by_katakana"]
    results = []

    # search for lastname
    columns.each do |column|
      results = LastName.partialmatch_column(column, search_key)
      break if results.present?
    end

    # search for firstname if not found lastname
    if results.empty?
      columns.each do |column|
        results = FirstName.partialmatch_column(column, search_key)
        break if results.present?
      end
    end

    @results = {
      search_key: search_key,
      results: results,
    }
  end

  def name_generate
    gender = params[:gender]
    @results = []
    if gender
      first_names = FirstName.gender(gender.to_i).order('RAND()').first(MAX_NUMBER_OF_NAME_GENERATE).map(&:by_kanji)
      last_names  = LastName.order('RAND()').first(MAX_NUMBER_OF_NAME_GENERATE).map(&:by_kanji)
      (0..MAX_NUMBER_OF_NAME_GENERATE-1).each do |index|
        @results[index] = { first: first_names[index], last: last_names[index] }
      end
    end
    @results
  end
end
