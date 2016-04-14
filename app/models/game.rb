class Game < ActiveRecord::Base
  has_and_belongs_to_many :images
  validates :player, length: {minimum: 1, maximum: 3}, allow_blank: false
  default_scope {order('score DESC') }
end
