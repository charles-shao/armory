module Types
  class ModelType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :category, String, null: false
    field :units, [Types::UnitType], null: true
  end
end
