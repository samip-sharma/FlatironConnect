class ModEventSerializer < ActiveModel::Serializer
  attributes :id, :start ,:end , :title , :user_id
end
