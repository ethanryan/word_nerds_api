class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end


  def sign_in
    user = User.find_by(name: params[:name])
    if(user && user.authenticate(params[:password]))
      token = JWT.encode(
        {user_id: user.id}, ENV["JWT_SECRET"], ENV["JWT_ALGORITHM"]
      )
      render json: {user: user, token: token}
    else
      render json: {error: "No account or password found"}
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      token = JWT.encode({user_id: user.id}, ENV["JWT_SECRET"], ENV["JWT_ALGORITHM"])
      render json: {user: user, token: token}
    else
      render json: {error: "ERROR"}, status: 400
    end
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
