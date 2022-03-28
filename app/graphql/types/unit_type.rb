module Types
  class UnitType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :points, Integer, null: false
    field :movement, Integer, null: false
    field :weapon_skill, Integer, null: false
    field :ballistic_skill, Integer, null: false
    field :strength, Integer, null: false
    field :toughness, Integer, null: false
    field :wounds, Integer, null: false
    field :attacks, Integer, null: false
    field :leadership, Integer, null: false
    field :sv, Integer, null: false
  end
end
