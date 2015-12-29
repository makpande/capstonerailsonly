module Api::V1
  class PostsSerializer < ActiveModel::Serializer

    attributes :title, :created_at, :abstract, :id
    has_one :user, serializer: Api::V1::UserSerializer

    def abstract
      object.body[0..200]
    end
  end
end
