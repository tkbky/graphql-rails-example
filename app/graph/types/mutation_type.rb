MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :AddComment, field: AddCommentMutation.field
end
