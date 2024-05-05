class HomesController < ApplicationController
  def top
  end
  
  def about
    @books = Book.all
    @user = current_user
  end
  
end
