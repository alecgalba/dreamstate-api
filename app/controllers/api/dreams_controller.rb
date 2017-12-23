class Api::DreamsController < ApplicationController
  before_action :set_dream, only: [:show, :update, :destroy]

  def index
    render json: Dream.all
  end

  def show
    render json: @dream
  end

  def create
    dream = Dream.new(dream_params)
    if dream.save
      render json: dream
    else
      render json: {message: dream.errors}, status: 400
    end
  end

  def update
    if @dream.update(dream_params)
      render json: @dream
    else
      render json: {message: dream.errors}, status: 400
    end
  end

  def destroy
    if @dream.destroy
      render status: 204
    else
      render json: {message: "Unable to forget this dream"}, status: 400
    end
  end

  private

    def set_dream
      @dream = Dream.find_by(id: params[:id])
    end

    def dream_params
      params.require(:dream).permit(:name, :description, :sleep_hours, :likes)
    end

end
