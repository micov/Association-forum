class AddDetailsToAdverts < ActiveRecord::Migration
  def change
    add_column :adverts, :description, :string
    add_column :adverts, :location, :string
    add_column :adverts, :comprehensiveness, :string
    add_column :adverts, :contact, :string
    add_column :adverts, :applicationLink, :string
    add_column :adverts, :profile, :string
    add_column :adverts, :start, :string
    add_column :adverts, :end, :string
    add_column :adverts, :applicationDeadline, :date
  end
end
