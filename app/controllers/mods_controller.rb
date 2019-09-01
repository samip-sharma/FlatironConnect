class ModsController < ApplicationController
  def index
      render json: Mod.all
  end

  def show
    render json: Mod.find(params[:id])
  end
end
