class Access < ApplicationRecord

  #validation
  #validates :route, presence: true
  #validates :station, presence: true
  #validates :distance, presence: true

  # association => appoint table name
  belongs_to :property, optional: true
  # => 子要素をネストし親要素のCRUD機能と併せて実装できる

end
