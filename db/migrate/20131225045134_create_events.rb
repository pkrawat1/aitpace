class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :fees
      t.text :rules
      t.references :head, index: true

      t.timestamps
    end
  end
end
