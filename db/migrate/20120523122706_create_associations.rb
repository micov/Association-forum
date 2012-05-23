class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.string :name
      t.string :info
      t.string :webPage

      t.timestamps
    end
  end
end
