class BooksController < ApplicationController
  def index
    @books = Book.all
    @user = current_user
  end
end
