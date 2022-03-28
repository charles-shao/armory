class UnitPresenter < ApplicationPresenter
  def movement
    "#{subject.movement}\""
  end

  # Alias for weapon skill
  def ws
    "#{subject.weapon_skill}+"
  end

  # Alias for ballistic skill
  def bs
    "#{subject.ballistic_skill}+"
  end

  # Also known as save
  def sv
    "#{subject.sv}+"
  end

  def weapons
    subject.weapons.map { |weapon| WeaponPresenter.new(weapon) }
  end
end
