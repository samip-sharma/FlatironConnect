class ModsController < ApplicationController
  def index
      render json: Mod.all
  end

  def create
    mod=Mod.create(name:params[:mod_name])
    render json: mod
  end

  def show
    render json: Mod.find(params[:id])
  end
end
