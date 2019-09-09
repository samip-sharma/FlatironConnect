class GlobalMessagesController < ApplicationController
    def index
        globalMessage = GlobalMessage.all
        render json: globalMessage
    end

    def create
    globalMessage = GlobalMessage.new(message_params)
        if globalMessage.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
            GlobalMessageSerializer.new(globalMessage)
            ).serializable_hash
            ActionCable.server.broadcast 'global_messages_channel', serialized_data
            head :ok
        end
    end
    
    private
    
    def message_params
    params.require(:global_message).permit(:text,:user_id)
    end
end
