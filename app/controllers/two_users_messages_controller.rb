class TwoUsersMessagesController < ApplicationController
    def create
        # byebug
        message=TwoUsersMessage.create(two_users_chat_id:params[:chat_id],text:params[:text])
        render json: message
    end
end
