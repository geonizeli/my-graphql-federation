module Types
  class CommentType < Types::BaseObject
    implements GraphQL::Types::Relay::Node

    global_id_field :id
    global_id_field :article_id

    field :article_id, String, null: false
    field :authorship, String, null: false
    field :content, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
