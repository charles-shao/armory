class Model < ApplicationRecord
  belongs_to :roster_model, optional: true

  has_many :units, dependent: :destroy

  enum category: {
    no_force_slot: 0,
    hq: 1,
    troop: 2,
    elite: 3,
    fast_attack: 4,
    heavy_support: 5,
    flyer: 6,
    transport: 7,
    lord_of_war: 8
  }

  def size_range
    return "#{min_size} - #{max_size}" if min_size != max_size
    max_size
  end
end
