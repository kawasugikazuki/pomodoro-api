class ApplicationController < ActionController::API
  before_action :authenticate_user, except: [:login, :register]

  private

  def authenticate_user
    token = request.headers['Authorization']&.split(' ')&.last
    return render json: { error: 'No token proveided' }, status: :unauthorized unless token

    begin
      decoded = JsonWebToken.decode(token)
      @current_user = User.find(decoded[:user_id])
    rescue => e
      render json: {  error: e.message }, status: :unauthorized
    end
  end
  
  def current_user
    @current_user
  end
end
