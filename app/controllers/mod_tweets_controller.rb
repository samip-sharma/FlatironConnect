class ModTweetsController < ApplicationController
    def show
        mod=Mod.find(params[:id])
        render json: mod.mod_tweets
    end
    
        def create
            mod_tweet=ModTweet.create(modTweet_params)
            render json: mod_tweet
        end
    
    private
    
        def modTweet_params
        params.require(:mod_tweet).permit(:user_id,:content,:mod_id)
        end
end
