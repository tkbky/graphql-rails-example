CommentType = GraphQL::ObjectType.define do
  name 'Comment'

  field :id, !types.ID
  field :body, !types.String
  field :created_at, !types.String
  field :updated_at, !types.String
end
