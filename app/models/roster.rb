class Roster < ApplicationRecord
  FACTIONS = [
    "Ultramarines",
    "Iron Hands",
    "Imperial Fists"
  ].freeze

  belongs_to :user

  has_many :roster_models
end
