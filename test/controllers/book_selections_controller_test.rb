require "test_helper"

class BookSelectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_selection = book_selections(:one)
  end

  test "should get index" do
    get book_selections_url
    assert_response :success
  end

  test "should get new" do
    get new_book_selection_url
    assert_response :success
  end

  test "should create book_selection" do
    assert_difference("BookSelection.count") do
      post book_selections_url, params: { book_selection: { add_book: @book_selection.add_book, book_id: @book_selection.book_id, user_id: @book_selection.user_id } }
    end

    assert_redirected_to book_selection_url(BookSelection.last)
  end

  test "should show book_selection" do
    get book_selection_url(@book_selection)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_selection_url(@book_selection)
    assert_response :success
  end

  test "should update book_selection" do
    patch book_selection_url(@book_selection), params: { book_selection: { add_book: @book_selection.add_book, book_id: @book_selection.book_id, user_id: @book_selection.user_id } }
    assert_redirected_to book_selection_url(@book_selection)
  end

  test "should destroy book_selection" do
    assert_difference("BookSelection.count", -1) do
      delete book_selection_url(@book_selection)
    end

    assert_redirected_to book_selections_url
  end
end
