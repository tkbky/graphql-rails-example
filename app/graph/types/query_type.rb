QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root of this schema'

  # For Relay to re-fetch objects from schema
  # Root level node field
  field :node, GraphQL::Relay::Node.field

  field :post do
    type PostType
    argument :id, !types.ID
    resolve ->(obj, args, ctx) { Post.find(args['id']) }
  end
end
