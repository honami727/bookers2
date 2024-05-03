class HomesController < ApplicationController
  def top
  end
  
  def about
    @books = Book.all
  end
  
end
