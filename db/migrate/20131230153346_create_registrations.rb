class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :mob_no
      t.string :email
      t.string :branch
      t.string :year
      t.string :college
      t.string :event
      t.text :members
      t.string :staff_name
      t.string :staff_contact
      t.string :staff_email

      t.timestamps
    end
  end
end
