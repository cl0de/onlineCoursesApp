class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id]) 
  end

  def snippet_params
    params.require(:courses).permit(:title, :description, :image)
  end

end
