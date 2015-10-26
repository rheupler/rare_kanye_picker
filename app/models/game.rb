class Game < ActiveRecord::Base
  has_and_belongs_to_many :images

  default_scope {order('turns ASC') }

  def collection
    @collection = []
  end
end
