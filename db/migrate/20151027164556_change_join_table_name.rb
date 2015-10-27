class ChangeJoinTableName < ActiveRecord::Migration
  def change
    rename_table :images_games, :games_images
  end
end
