module Api::V1
  class PostSerializer < ActiveModel::Serializer

    attributes :title, :body, :image_url, :created_at, :abstract, :id
    has_one :user, serializer: Api::V1::UserSerializer

    def abstract
      object.body[0..200]
    end
  end
end
