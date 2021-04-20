module Types
  class QueryType < Types::BaseObject
    # include GraphQL::Types::Relay::HasNodeField
    # include GraphQL::Types::Relay::HasNodesField

    field :articles, ArticleType.connection_type, null: false

    def articles
      Article.all
    end
  end
end
