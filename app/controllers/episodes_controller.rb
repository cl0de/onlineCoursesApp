class EpisodesController < ApplicationController
  # before_action :set_episode, only: %i[ show edit update destroy ]

  # GET /episodes
  def index
    @episodes = Episode.all
    # @episodes = Episode.find_by(course_id: @course)
  end

  # GET /episodes/1
  def show
    @episode = Episode.find(params[:id])
  end

  # GET /episodes/new
  def new
    @episode = Episode.new
  end

  # GET /episodes/1/edit
  def edit
    @episode = Episode.find(params[:id])
  end

  # POST /episodes
  def create
    @episode = Episode.new(episode_params)
      if @episode.save
        redirect_to @episode, notice: "Episode was successfully created." 
      else
        render :new
      end
  end
  def update
    @episode = Episode.find(params[:id])
    if @episode.update(episode_params)
      redirect_to @episode, notice: "Episode was successfully updated." 
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  # DELETE /episodes/1
  def destroy
    @episode.destroy
      redirect_to episodes_url, notice: "Episode was successfully destroyed." 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_episode
    #   @episode = Episode.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def episode_params
      params.require(:episode).permit(:course_id, :title, :description, :order, :video_link)
    end
end
