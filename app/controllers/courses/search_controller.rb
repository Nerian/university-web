class Courses::SearchController < ApplicationController

  def search
    search_key = params[:key]
    results = {}

    results[:courses] = Course.search(:name => search_key)
    results[:courses].push Course.search(:description => search_key)
    results[:courses].push Course.search(:notes => search_key)

  end

end