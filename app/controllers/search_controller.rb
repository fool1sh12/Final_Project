class SearchController < ApplicationController
  def index
    @query = params[:query]
    @author_id = params[:author_id]

    @search = Search.new(@query, :author_id => @author_id)
    @books = @search.results
  end
end
