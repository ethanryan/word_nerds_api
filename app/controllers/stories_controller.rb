class StoriesController < ApplicationController #correct?

  def index
    stories = Story.all
    render json: stories
  end

  def create
    # genre = Genre.find_by(name: params[....])

    # story_characters = params[:characters].map do |char|
      # Character.create(...)
    # end

    # story_characters = params[:characters].map do |char|
    #   hero = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    #   shadow = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    #   friend = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    # end

    # hero = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    # shadow = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    # friend = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    # #need to do this for each character?
    # #need to have the http://localhost:3000/characters route set up, and be able to see the persisted characters?
    #
    # characters = [hero, shadow, friend]

    #  make a new story with title and user_id from params
    story = Story.new(story_params)

    story.createContent("genre", "story_characters") #calling createContent method in story model

    story.save
    render json: story
    # # {
    # id: 1,
    # user_id: 1,
    # content: "..." ,
    # pargraphs: [
    #   {id: 4, text: ".....", order: 1},
    #   {},
    #   {},...
    # ]
    # characters: [
    #   {id: 1, archetype: 'hero', name: 'wonder woman', gender: 'women'},
    #   {},
    #   {}
    # ]
  # }
  end

  def show
    story = Story.find(params[:id])
    render json: story
  end

  def update
    # byebug
    story = Story.find(params[:id])
    story.update(story_params)
    story.save
    stories = Story.all #for patch request
    render json: stories #for patch request
  end

  def destroy
    story = Story.find(params[:id])
    story.destroy
    render json: Story.all
  end

  private

  def story_params
    # params.require(:story).permit(:title, :user_id)
    params.require(:story).permit(:content, :title, :user_id, :genre, characters: [:id, :archetype, :name, :gender])
    # need content as attribute above so user can update story (update content)
  end

end
