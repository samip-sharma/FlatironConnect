class FollowsController < ApplicationController

  def show
    user=User.find(params[:id])
    # byebug
    render json: user.followees
  end

  def createFollows
    following=User.find(params[:following])
    being_followed=User.find(params[:being_followed])
    being_followed.followers << following
    render json: being_followed
  end

  def removeFollows
    following=User.find(params[:following])
    Follow.find_by(follower_id:params[:following],followee_id:params[:being_followed]).destroy
    render json: following.followees
  end
end
