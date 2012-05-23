class AddInfoToAssociations < ActiveRecord::Migration
  def change
    add_column :associations, :info, :string
  end
end
