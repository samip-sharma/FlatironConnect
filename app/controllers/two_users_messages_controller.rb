class TwoUsersMessagesController < ApplicationController
    def create        
        message=TwoUsersMessage.create(two_users_chat_id:params[:chat_id],text:params[:text], sender:User.find(params[:user_id]).name)
        render json: message
    end
end
