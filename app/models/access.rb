class Access < ApplicationRecord

  #validation
  validates :route1, presence: true
  validates :station1, presence: true
  validates :distance1, presence: true
  validates :route2, presence: true
  validates :station2, presence: true
  validates :distance2, presence: true

end
