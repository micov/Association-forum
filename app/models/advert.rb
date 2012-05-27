class Advert < ActiveRecord::Base
  attr_accessible :heading, association_id
  belongs_to :association

  validates :association_id, presence: true
  #mer????

  #Ordering adverts from newest to oldest
  default_scope order: 'associations.created_at DESC'
end
