class CreateAssociationsUsersTable < ActiveRecord::Migration
  def self.up
      create_table :associations_users, :id => false do |t|
        t.references :association
        t.references :user
      end

      add_index :associations_users, [:association_id, :user_id]
      add_index :associations_users, [:user_id, :association_id]
    end

    def self.down
      drop_table :associations_users
    end
end
