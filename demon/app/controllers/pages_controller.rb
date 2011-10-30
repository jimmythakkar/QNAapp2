class PagesController < ApplicationController
  def home
   @title = "Home"
   @question = Question.new if signed_in?
   @question = Question.new
  # @feed_items = current_user.feed

  end

  def contact
   @title = "Contact"
  end
  
  def about
   @title = "About"
  end
end
