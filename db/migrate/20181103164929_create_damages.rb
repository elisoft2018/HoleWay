class CreateDamages < ActiveRecord::Migration[5.1]
  def change
    create_table :damages do |t|
      t.string :name, limit: 50
      t.integer :level
      t.integer :severity
      t.boolean :enabled
      t.string :description, limit:100

      t.timestamps
    end
    add_index :damages, :name
    add_index :damages, :severity
  end
end
