class SearchController < ApplicationController
  def search
    search_key = params[:q]
    name_type = params[:name_type]
    by_kanji_results = FindName.where(name_type: name_type).where(by_kanji: search_key)
    Rails.logger.info "################# by_kanji_results count=#{by_kanji_results.size}"
    by_romaji_results = FindName.where(name_type: name_type).where(by_romaji: search_key)
    #Rails.logger.info "################# by_romaji_results count=#{by_romaji_results.size}"
    Rails.logger.info "################# by_romaji_results #{by_romaji_results.inspect}"
    redirect_back fallback_location: root_url
  end
end
