class Association < ActiveRecord::Base
  attr_accessible :name, :info, :webPage
  
  #"dependent: :destroy" ensures that all adverts of an association 
  #is removed if the assoc. is removed
  has_many :adverts, dependent: :destroy
  
  validates :name,  presence: true, length: { maximum: 50 }
  validates :info,  presence: true, length: { maximum: 300 }
  validates :webPage,  presence: true, length: { maximum: 70 }
  #mer???????? typ unikt namn.
end
