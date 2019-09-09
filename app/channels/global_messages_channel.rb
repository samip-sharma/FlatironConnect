class GlobalMessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "global_messages_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
