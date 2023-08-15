class BooksController < ApplicationController
  def index
    library = Library.find(params[:library_id])
    books = library.books.includes(:user)
    
    render json: {
      library_name: library.name,
      books: books.map { |book| book_info(book) }
    }
  end

  private

  def book_info(book)
    if book.status == "checked_out"
      {
        title: book.title,
        status: book.status,
        checked_out_by: book.user.name
      }
    else
      {
        title: book.title,
        status: book.status
      }
    end
  end
end
