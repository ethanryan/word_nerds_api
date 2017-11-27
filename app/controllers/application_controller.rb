class ApplicationController < ActionController::API
  private
  def token
    token = request.headers['Authorization']
  end

  def decode(token)
      JWT.decode(token, ENV['JWT_SECRET'], true, {algorithm: ENV['JWT_ALGORITHM']})
    rescue JWT::DecodeError
      nil
  end

  def current_account
    jwt_payload = decode(token)
    if jwt_payload.present?
      @current_account ||= User.find_by(id: jwt_payload[0]["user_id"])
    end
  end

  def authorize_account!
    current_account
    #commenting out below if statement......
    # if !@current_account.present? #this is saying if current_account is NOT present, return error...
    #   render json: [{error: 'Invalid authorization!!!!'}] and return #making an array so it doesn't break app...
    # end
  end
end
