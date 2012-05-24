# == Schema Information
#
# Table name: adverts
#
#  id             :integer         not null, primary key
#  heading        :string(255)
#  association_id :integer
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#
class Advert < ActiveRecord::Base
  attr_accessible :heading
  belongs_to :association

  validates :association_id, presence: true
  #mer????

  #Ordering adverts from newest to oldest
  default_scope order: 'microposts.created_at DESC'
end


