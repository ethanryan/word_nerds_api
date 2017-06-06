class StoriesController < ApplicationController #correct?

  def index
    stories = Story.all
    render json: stories
  end

  def create
    story = Story.create
  end

  def show
    #story = Story.find(params[:id]) #need params?
  end


end
