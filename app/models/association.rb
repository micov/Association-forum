# == Schema Information
#
# Table name: associations
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  info       :text
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
  
  validates :name,  presence: true, length: { maximum: 50 },
             uniqueness: { case_sensitive: false }
  validates :info,  presence: true, length: { maximum: 500 }
  validates :webPage,  presence: true, length: { maximum: 100 }
  
  #Ordering adverts alpabetically
  default_scope order: 'associations.name'

end



