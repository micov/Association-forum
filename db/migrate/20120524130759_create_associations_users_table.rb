class CreateAssociationsUsersTable < ActiveRecord::Migration
  def self.up
      create_table :associations_users, :id => false do |t|
          t.references :association
          t.references :user
      end
      add_index :restaurants_users, [:restaurant_id, :user_id]
      add_index :restaurants_users, [:user_id, :restaurant_id]
    end

    def self.down
      drop_table :restaurants_users
    end
end
