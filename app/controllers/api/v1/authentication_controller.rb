class Api::V1::AuthenticationController < ApplicationController
  def register
    user = User.new(user_params)
    if user.save
      token = generate_token(user.id)
      render json: {
        message: 'User created successfully',
        user: user_response(user),
        token: token
      }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def login
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      token = generate_token(user.id)
      render json: {
        message: 'Login successful',
        user: user_response(user),
        token: token
      }
    else
      render json: { error: 'Invalid credentials' }, status: :unauthorized
    end
  end

  private

  def user_response(user)
    {
      id: user.id,
      name: user.name,
      email: user.email
    }
  end

  def generate_token(user_id)
    JsonWebToken.encode({ user_id: user_id })
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end