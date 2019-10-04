class Access < ApplicationRecord

  #validation
  validates :route1, presence: true
  validates :station1, presence: true
  validates :distance1, presence: true

  # association => appoint table name
  belongs_to :property, optional: true
  # => 子要素をネストし親要素のCRUD機能と併せて実装できる

end
