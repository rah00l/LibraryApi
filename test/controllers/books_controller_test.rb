# test/controllers/books_controller_test.rb
require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should return book information for a library" do
  library = libraries(:one)
  book1 = books(:one)
  book2 = books(:two)

  get library_books_url(library), as: :json
  assert_response :success

  response_data = JSON.parse(response.body)
  assert_equal library.name, response_data['library_name']
  assert_equal book2.title, response_data['books'][0]['title']
  assert_equal book1.title, response_data['books'][1]['title']
  assert_equal "available", response_data['books'][1]['status'] # This assertion might be problematic
  end
end
