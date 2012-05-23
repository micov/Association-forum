class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :heading
      t.integer :association_id

      t.timestamps
    end
    add_index :adverts, [:association_id, :created_at]
  end
end
