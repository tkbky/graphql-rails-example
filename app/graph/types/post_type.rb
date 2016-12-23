PostType = GraphQL::ObjectType.define do
  name 'Post'
  description 'A blog post'

  # For Relay's caching & refetching
  # 1. Implement Node interface
  # 2. Define an 'id' field which returns UUID
  interfaces [GraphQL::Relay::Node.interface]
  global_id_field :id

  field :id, !types.ID
  field :title, !types.String
  field :body, !types.String

  connection :comments, CommentType.connection_type
end
