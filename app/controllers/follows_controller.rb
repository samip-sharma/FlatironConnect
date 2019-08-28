class FollowsController < ApplicationController

  def show
    user=User.find(params[:id])
    # byebug
    render json: user.followees
  end
end
