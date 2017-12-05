class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :images_games do |t|
      t.column :image_id, :integer
      t.column :game_id, :integer

      t.timestamps
    end
  end
end
