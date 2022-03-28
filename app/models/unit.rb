class Unit < ApplicationRecord
  belongs_to :model

  has_many :weapons, dependent: :destroy
end
