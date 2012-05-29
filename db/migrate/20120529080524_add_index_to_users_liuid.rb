class AddIndexToUsersLiuid < ActiveRecord::Migration
  def change
    add_index :users, :liuid, unique: true
  end
end
