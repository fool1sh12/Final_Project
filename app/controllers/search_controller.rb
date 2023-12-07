class SearchController < ApplicationController
  def index
    @query = params[:query]

    @books = Book.where("title like '%#{@query}%'")
  end
end
