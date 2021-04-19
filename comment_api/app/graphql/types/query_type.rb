module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :comments, CommentType.connection_type, null: false

    def comments
      Comment.all
    end
  end
end
