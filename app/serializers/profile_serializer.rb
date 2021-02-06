class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :user, :bio, :picture
end
