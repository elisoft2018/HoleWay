class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :report, foreign_key: true
      t.string :comment, limit: 1000
      t.integer :value

      t.timestamps
    end
  end
end
