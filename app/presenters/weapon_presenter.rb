class WeaponPresenter < ApplicationPresenter
  def type
    "#{category.titleize} #{attacks}"
  end

  def range
    "#{subject.range}\""
  end
end
