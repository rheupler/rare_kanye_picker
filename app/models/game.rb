class Game < ActiveRecord::Base
  has_and_belongs_to_many :images
  validates :player, allow_blank: false
  default_scope {order('score DESC') }
end
