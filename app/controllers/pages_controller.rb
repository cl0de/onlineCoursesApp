class PagesController < ApplicationController


  def index
    # load_courses
    @courses = Course.all
  end

  def about
  end

  # private

  # def load_courses
  #   @courses = Course.all
  # end
end
