class UsersController < ApplicationController

  def index
    # users = User.all
    users = User.all.size #returning number of all users, instead of all users... note size is faster than length or count...
    render json: users
  end

  def sign_in
    user = User.find_by(name: params[:name])
    if(user && user.authenticate(params[:password]))
      token = JWT.encode(
        {user_id: user.id}, ENV["JWT_SECRET"], ENV["JWT_ALGORITHM"]
      )
      render json: {user: UserSerializer.new(user).attributes, token: token}
    else
      render json: {error: "No account or password found"}
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      token = JWT.encode({user_id: user.id}, ENV["JWT_SECRET"], ENV["JWT_ALGORITHM"])
      render json: {user: UserSerializer.new(user).attributes, token: token}
    else
      render json: {error: "ERROR"}, status: 400
    end
  end

  # def show
  #   user = User.find_by(name: params[:name])
  #   render json: user
  # end



  def me
  # def current_user_xyz
    #calling this method "current_user" creates an infinite loop for some reason,
    #so I'm calling this method "me", here and in the routes
    authorize_account!
    return if performed?
    render json: {user: UserSerializer.new(@current_account).attributes}
  end

  def decode_token
    jwt = JWT.decode(params[:token], ENV['JWT_SECRET'], ENV['JWT_ALGORITHM'])
    user = User.find(jwt[0]['user_id'])
    render json: user
  end


  private

  def user_params
    params.require(:user).permit(:name, :email_address, :password, :password_confirmation, :profile_pic)
    #need to add authenticate above?
  end

  def password_match?
    params[:user][:password] == params[:user][:password_confirmation]
  end

end
