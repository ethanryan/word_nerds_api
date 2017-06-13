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

    # @post = current_user.posts.build(params[:post])

    # story_characters = params[:story][:characters].map do |char|
    #   Character.create([
    #     story_id: 1, #need a story id to be able to create a character, cuz a character belongs to a story
    #     # name: '',
    #     archetype: '', #0 is hero
    #     gender: '' #0 is male
    #     ])
    # end

    # story_characters = params[:characters].map do |char|
    #   hero = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    #   shadow = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    #   friend = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
    # end

  #  params["story"]["characters"]

  # hero = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
  # shadow = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])
  # friend = Character.create(archetype: params[:archetype], name: params[:name], gender: params[:gender])

    # hero = Character.new(params["story"]["characters"])
    # shadow = Character.new(params["story"]["characters"])
    # friend = Character.new(params["story"]["characters"])
    # #need to do this for each character?
    # #need to have the http://localhost:3000/characters route set up, and be able to see the persisted characters?
    #
    # characters = [hero, shadow, friend]

    #  make a new story with title and user_id from params
    story = Story.new(story_params)

    # story.createContent("genre", "story_characters") #calling createContent method in story model
    story.createContent("genre", "story_characters") #calling createContent method in story model

    story.save
    ###trying to add characters here...
    characters = characters_params.map do |character_hash|
      character = Character.new(character_hash)
      character.story_id = story.id
      character.save
    end

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

#####need all these params????

    params.require(:story).permit(:content, :title, :user_id, :genre)
    # need content as attribute above so user can update story (update content)
  end
  def characters_params
    char_params = params.require(:story).permit( characters: [:archetype, :name, :gender] )
    char_params[:characters]
  end

end
