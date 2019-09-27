class TweetsController < ApplicationController
  def index
    render json: Tweet.all
  end

  def create
    tweet=Tweet.create(tweet_params)
    render json: tweet
  end

  private

  def tweet_params
  params.require(:tweet).permit(:user_id,:content)
  end
end
