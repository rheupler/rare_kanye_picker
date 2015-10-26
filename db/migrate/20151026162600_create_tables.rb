class CreateTables < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.column :value, :integer
      t.column :name, :string

      t.timestamps
    end
    create_table :games do |t|
      t.column :player, :string
      t.column :score, :integer, default: 0, null: false
      t.column :turns, :integer, default: 0, null: false

      t.timestamps
    end
  end
end
