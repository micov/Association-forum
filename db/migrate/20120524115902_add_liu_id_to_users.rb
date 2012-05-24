class AddLiuIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :liu_id, :string
  end
end
