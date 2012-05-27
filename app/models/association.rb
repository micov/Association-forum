# == Schema Information
#
# Table name: associations
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  info       :string(255)
#  webPage    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


class Association < ActiveRecord::Base
  attr_accessible :name, :info, :webPage
  
  #"dependent: :destroy" ensures that all adverts of an association 
  #is removed if the assoc. is removed
  has_many :adverts, dependent: :destroy
  has_and_belongs_to_many :users
  
  validates :name,  presence: true, length: { maximum: 50 }
  validates :info,  presence: true, length: { maximum: 300 }
  validates :webPage,  presence: true, length: { maximum: 70 }
  #mer???????? typ unikt namn.
end
