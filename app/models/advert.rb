# == Schema Information
#
# Table name: adverts
#
#  id                  :integer         not null, primary key
#  heading             :string(255)
#  association_id      :integer
#  created_at          :datetime        not null
#  updated_at          :datetime        not null
#  description         :text
#  location            :string(255)
#  comprehensiveness   :string(255)
#  contact             :string(255)
#  applicationLink     :string(255)
#  profile             :string(255)
#  start               :string(255)
#  end                 :string(255)
#  applicationDeadline :date
#
class Advert < ActiveRecord::Base

  attr_accessible :heading, :association_id, :description, 
                  :location, :comprehensiveness, :contact, :applicationLink,
                  :profile, :start, :end, :applicationDeadline
  belongs_to :association

  
  validates :association_id, presence: true
  validates :heading,  presence: true, length: { maximum: 50 }
  validates :description,  presence: true, length: { maximum: 500 }
  validates :location, length: { maximum: 100 }
  validates :comprehensiveness, length: { maximum: 100 }
  validates :contact, length: { maximum: 100 }
  validates :applicationLink, length: { maximum: 100 }
  validates :profile, length: { maximum: 255 }
  validates :start, length: { maximum: 100 }
  validates :end, length: { maximum: 100 }
  
  #Ordering adverts from newest to oldest
  default_scope order: 'adverts.created_at DESC'

end

