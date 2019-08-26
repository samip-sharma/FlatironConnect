class UsersController < ApplicationController

  def create
  user = User.create(user_params)
  if user.valid?
      render json: auth_response_json(user) # see application_controller.rb
  else
      render json: { errors: user.errors.full_messages }
  end
end
end
