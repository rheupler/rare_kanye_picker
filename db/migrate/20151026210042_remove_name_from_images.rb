class RemoveNameFromImages < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :name
  end
end
