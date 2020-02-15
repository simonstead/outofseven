class MoodsController < ApplicationController
  def index
    moods = Mood.all
    render json: moods, status: :ok
  end

  def create
    mood = Mood.create!(mood_params)
    render json: mood, status: :ok
  end

  def mood_params
    params.require(:mood).permit(:mood)
  end
end
