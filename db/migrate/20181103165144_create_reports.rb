class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.belongs_to :damage, foreign_key: true
      t.string :photography, limit: 256
      t.string :location, limit: 256
      t.string :comment, limit: 1000
      t.boolean :enabled

      t.timestamps
    end
  end
end
