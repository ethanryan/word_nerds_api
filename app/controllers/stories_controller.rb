class StoriesController < ApplicationController
  before_action :authorize_account!
  def index
    stories = Story.all
    render json: stories
  end


  def create
    #  make a new story with title and user_id from params
    story = Story.new(story_params)

    puts "params.inspect::::::"
    puts params.inspect

    puts "story_params is: "
    puts story_params

    puts "genres_params is: "
    puts genres_params

    #alllll i need below is to pass a string, "horror", as the first argument...

    story.create_content(genres_params, "story_characters") #passing genres within story_params
    #story.create_content("genres", "story_characters") #calling createContent method in story model

    story.save

    characters = characters_params.map do |character_hash|
      character = Character.new(character_hash)
      character.story_id = story.id
      character.save
      character.change_character_names(story)
      character.change_character_genders(story)
    end #end loop

    story.save
    render json: story
  end #end of create story method


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
    render json: stories #for patch request, but this should be story instead...
  end


  def destroy
    story = Story.find(params[:id])
    story.destroy
    render json: Story.all
  end

  private

  def story_params
    #params.require(:story).permit(:content, :title, :user_id, genres: [:name] ) #changed :genre to :genres
    params.require(:story).permit(:content, :title, :user_id, :genres ) #changed :genre to :genres
    # need content as attribute above so user can update story (update content)
  end

  def genres_params
    gen_params = params.require(:story).permit( genres: [:name] ) #changed :genre to :genres
    gen_params[:genres]
  end

  def characters_params
    char_params = params.require(:story).permit( characters: [:archetype, :name, :gender] )
    char_params[:characters]
  end

end #end class
