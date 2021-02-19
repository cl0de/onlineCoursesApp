class CoursesController < ApplicationController
  def index
    @courses = Course.all
    
  end

  def show
    @course = Course.find(params[:id]) 

    # if @courset.nil 
    #   redirect_to root_path
    # end
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:success] = 'You created a new course'
      redirect_to @course
    else
      render 'new'
    end 
  end

  def edit 
    @course = Course.find(params[:id])
  end

  def update 
    @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to @course
    else
      render :edit
    end
  end

  def delete 
    @course = Course.find(params[:id])
  end

  def destroy
    @course = Course.find(params[:id]).destroy 
    flash[:success] = 'Course removed successfully!'
    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :image)
  end
end
