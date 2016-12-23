Schema = GraphQL::Schema.define do
  query QueryType

  object_from_id ->(id, ctx) do
    type_name, item_id = GraphQL::Schema::UniqueWithinType.decode(id)
    type_name.constantize.find(item_id)
  end

  id_from_object -> (obj, type_definition, ctx) do
    GraphQL::Schema::UniqueWithinType.encode(type_definition.name, obj.id)
  end

  resolve_type ->(obj, _ctx) { Schema.types[obj.class.name] }
end
