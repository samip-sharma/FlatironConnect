class GlobalMessagesChannel < ApplicationCable::Channel
  def subscribed
    puts "I am subscribed to this channel"
    stream_from "global_messages_channel"
  end

  def unsubscribed
    puts "I am unsubscribed from this channel"
    # Any cleanup needed when channel is unsubscribed
  end
end
