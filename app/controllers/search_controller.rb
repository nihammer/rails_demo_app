class SearchController < ApplicationController
  def search
    search_key = params[:q]
    name_type = params[:name_type]
    find_name = FindName.name_type_filter(name_type)
    by_kanji_results = find_name.partialmatch_column("by_kanji", search_key)
    by_romaji_results = find_name.partialmatch_column("by_romaji", search_key)
    by_katakana_results = find_name.partialmatch_column("by_katakana", search_key)
    @results = {
      search_key: search_key,
      by_kanji: by_kanji_results,
      by_romaji: by_romaji_results,
      by_katakana: by_katakana_results
    }
    render 'website/index'
  end
end
