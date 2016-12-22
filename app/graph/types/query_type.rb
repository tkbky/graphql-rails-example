QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root of this schema'

  field :post do
    type PostType
    argument :id, !types.ID
    description 'Find a Post by ID'
    resolve ->(obj, args, ctx) { Post.find(args['id']) }
  end
end
