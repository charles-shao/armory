module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :users, [Types::UserType], null: false,
      description: "List of all registered users"
    def users
      User.all
    end

    field :models, [Types::ModelType], null: false
    def models
      Model.all
    end
  end
end
