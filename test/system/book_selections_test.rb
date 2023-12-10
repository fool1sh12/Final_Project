require "application_system_test_case"

class BookSelectionsTest < ApplicationSystemTestCase
  setup do
    @book_selection = book_selections(:one)
  end

  test "visiting the index" do
    visit book_selections_url
    assert_selector "h1", text: "Book selections"
  end

  test "should create book selection" do
    visit book_selections_url
    click_on "New book selection"

    check "Add book" if @book_selection.add_book
    fill_in "Book", with: @book_selection.book_id
    fill_in "User", with: @book_selection.user_id
    click_on "Create Book selection"

    assert_text "Book selection was successfully created"
    click_on "Back"
  end

  test "should update Book selection" do
    visit book_selection_url(@book_selection)
    click_on "Edit this book selection", match: :first

    check "Add book" if @book_selection.add_book
    fill_in "Book", with: @book_selection.book_id
    fill_in "User", with: @book_selection.user_id
    click_on "Update Book selection"

    assert_text "Book selection was successfully updated"
    click_on "Back"
  end

  test "should destroy Book selection" do
    visit book_selection_url(@book_selection)
    click_on "Destroy this book selection", match: :first

    assert_text "Book selection was successfully destroyed"
  end
end
