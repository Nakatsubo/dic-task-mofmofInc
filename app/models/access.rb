class Access < ApplicationRecord

  #validation
  #validates :route, presence: true
  #validates :station, presence: true
  #validates :distance, presence: true

  # association
  belongs_to :property

end
