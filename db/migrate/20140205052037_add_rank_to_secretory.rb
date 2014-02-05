class AddRankToSecretory < ActiveRecord::Migration
  def change
    add_column :secretories, :rank, :integer
  end
end
