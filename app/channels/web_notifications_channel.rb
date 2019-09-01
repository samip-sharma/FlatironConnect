class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    def subscribed
      stream_for current_user
   end
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
