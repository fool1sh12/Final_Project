class Search

  def initialize(query, options = {})
    @query = query
    @author_id = options[:author_id]
  end

  def results
    books = Book.where("title like '%#{@query}%'")
    if @author_id.present?
      books = books.where(author_id: @author_id)
    end
    books
  end

end

  
  
  
