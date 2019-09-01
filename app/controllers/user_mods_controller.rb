class UserModsController < ApplicationController
  def show
    render json: Mod.find(params[:id]).users
  end
end
