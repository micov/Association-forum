class AddLiuidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :liuid, :string
  end
end
