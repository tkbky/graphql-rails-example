AddCommentMutation = GraphQL::Relay::Mutation.define do
  name 'AddComment'

  input_field :postId, !types.ID
  input_field :body, !types.String

  return_field :post, PostType
  return_field :comment, CommentType

  resolve ->(obj, args, ctx) {
    post = Post.find(args[:postId])
    comment = post.comments.create!(body: args[:body])

    {
      post: post,
      comment: comment
    }
  }
end
