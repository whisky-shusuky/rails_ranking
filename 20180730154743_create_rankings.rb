class CreateRankings < ActiveRecord::Migration[5.2]
  def change
    drop_table :rankings
    create_table :rankings do |t|
      t.string :name
      t.integer :point

      t.timestamps
    end
  end
end
