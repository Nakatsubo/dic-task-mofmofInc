class Property < ApplicationRecord

  # association => appoint table name
  has_many :accesses, dependent: :destroy

end
