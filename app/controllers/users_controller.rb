class UsersController < ApplicationController

  def create
  
    user = User.create(name:params[:name],user_name:params[:user_name],password:params[:password])
    if user.valid?
        render json: auth_response_json(user) # see application_controller.rb
    else
        render json: { errors: user.errors.full_messages }
    end
  end

  private
end
