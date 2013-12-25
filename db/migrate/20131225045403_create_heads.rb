class CreateHeads < ActiveRecord::Migration
  def change
    create_table :heads do |t|
      t.string :name
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
