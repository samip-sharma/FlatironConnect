class UsersController < ApplicationController

  def create

    user = User.create(name:params[:name],user_name:params[:user_name],password:params[:password])
    if user.valid?
        render json: auth_response_json(user) # see application_controller.rb
    else
        render json: { errors: user.errors.full_messages }
    end
  end


  def index
    render json: User.all
  end

  def update
    user=User.find(params[:user_id])
    mod=Mod.find(params[:mod_id])
    # byebug
    if !!user
    user.mod=mod
      if params[:name]!=""
        user.name=params[:name]
      end
      if params[:user_name] !=""
        user.user_name=params[:user_name]
      end
      if params[:password] !=""
        user.password=params[:password]
      end
    end
    user.save
  render json: user
    # user
  end



  def show
    render json: User.find(params[:id])
  end

  private
end
