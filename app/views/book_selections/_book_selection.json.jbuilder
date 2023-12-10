json.extract! book_selection, :id, :add_book, :book_id, :user_id, :created_at, :updated_at
json.url book_selection_url(book_selection, format: :json)
