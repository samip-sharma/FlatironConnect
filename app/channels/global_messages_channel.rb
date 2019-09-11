class GlobalMessagesChannel < ApplicationCable::Channel
  def subscribed
    puts "I am subscribed to this channel"
    # byebug
    
    user=User.find(params[:user])
    user.active_user=true
    user.save
    stream_from "global_messages_channel"
  end

  def unsubscribed
    user=User.find(params[:user])
    user.active_user=false
    user.save
    puts "I am unsubscribed from this channel"
    # Any cleanup needed when channel is unsubscribed
  end
end
