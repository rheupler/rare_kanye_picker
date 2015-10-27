class Image < ActiveRecord::Base
  has_and_belongs_to_many :games
  default_scope {order('value DESC') }
end
