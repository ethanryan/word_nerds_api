class PlotsController < ApplicationController

  before_action :authorize_account!

  def index
    plots = Plot.all
    render json: plots
  end

  # private
  #
  # def story_params
  #   params.require(:story).permit(:content, :title, :user_id, :genre)
  #   # need content as attribute above so user can update story (update content)
  # end
  #
  # def characters_params
  #   char_params = params.require(:story).permit( characters: [:archetype, :name, :gender] )
  #   char_params[:characters]
  # end

end #end class
