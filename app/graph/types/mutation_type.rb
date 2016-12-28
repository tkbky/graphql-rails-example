MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :AddComment, field: AddCommentMutation.field
  field :UpdateComment, field: UpdateCommentMutation.field
end
