PostsField = GraphQL::Field.define do
  name 'posts'
  type types[!PostType]
  description 'Post connection to fetch paginated posts collection.'

  resolve ->(obj, args, ctx) {
    Post.all
  }
end
