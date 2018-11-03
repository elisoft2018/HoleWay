class CreatePrivileges < ActiveRecord::Migration[5.1]
  def change
    create_table :privileges do |t|
      t.belongs_to :user, foreign_key: true
      t.string :privilege, limit: 50
      t.boolean :enabled

      t.timestamps
    end
  end
end
