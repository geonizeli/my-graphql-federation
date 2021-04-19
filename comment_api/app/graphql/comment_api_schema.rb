class CommentApiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  # Union and Interface Resolution
  def self.resolve_type(abstract_type, obj, ctx)
    case obj
    when Comment
      Types::CommentType
    else
      raise("Unexpected object: #{obj}")
    end
  end

  # Relay-style Object Identification:

  # Return a string UUID for `object`
  def self.id_from_object(object, type_definition, query_ctx)
    GraphQL::Schema::UniqueWithinType.encode(type_definition.name, object.id)
  end

  # Given a string UUID, find the object
  def self.object_from_id(id, query_ctx)
    type_name, item_id = GraphQL::Schema::UniqueWithinType.decode(id)
    type_name.constantize.find(item_id)
  end
end

# https://github.com/rmosolgo/graphql-ruby/issues/1505#issuecomment-428693570
CommentApiSchema.graphql_definition
