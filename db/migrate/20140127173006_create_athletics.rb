class CreateAthletics < ActiveRecord::Migration
  def change
    create_table :athletics do |t|
      t.string :name
      t.string :fees
      t.text :rules
      t.string :event_head_name
      t.string :event_head_email
      t.string :event_head_mobile

      t.timestamps
    end
  end
end
