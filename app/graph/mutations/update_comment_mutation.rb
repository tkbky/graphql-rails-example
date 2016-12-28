UpdateCommentMutation = GraphQL::Relay::Mutation.define do
  name 'UpdateComment'
  description 'Update a comment'

  input_field :id, !types.ID
  input_field :body, !types.String

  return_field :comment, CommentType

  resolve ->(obj, args, ctx) {
    comment = Comment.find(args[:id])
    comment.update!(body: args[:body])

    {
      comment: comment
    }
  }
end
