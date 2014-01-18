class CreateSecretories < ActiveRecord::Migration
  def change
    create_table :secretories do |t|
      t.string :name
      t.string :mob_no
      t.string :designation
      t.string :img_src
      t.string :email

      t.timestamps
    end
  end
end
