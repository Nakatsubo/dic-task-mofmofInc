class Property < ApplicationRecord

  #validation
  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :year, presence: true
  validates :note, presence: true

  # association => appoint table name
  has_many :accesses, dependent: :destroy
  accepts_nested_attributes_for :accesses, allow_destroy: true

end
