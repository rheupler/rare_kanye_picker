class ChangeJoinTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :images_games, :games_images
  end
end
