class TwoUsersChatsController < ApplicationController

    def getMessages
        follow=Follow.find_by(follower_id:params[:sender_id],followee_id:params[:receiver_id])
        #finding first connection
        if !follow.nil?
            chat=TwoUsersChat.find_by(follow_id:follow.id)
        end
        
        #no chat then find another connection
        if chat.nil?
            nextFollow = Follow.find_by(follower_id:params[:receiver_id],followee_id:params[:sender_id])
            if !nextFollow.nil? 
                follow=nextFollow
            end
            chat=TwoUsersChat.find_by(follow_id:follow.id)
        end
        
        # if no chat from both side create chat between users first time
        if chat.nil?
            chat=TwoUsersChat.create(follow_id:follow.id)
        end
        render json: chat
    end

end
