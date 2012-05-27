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
  attr_accessible :heading, :association_id
  belongs_to :association

  validates :association_id, presence: true
  #mer????

  #Ordering adverts from newest to oldest
  default_scope order: 'adverts.created_at DESC'
end


#Vad mer bör finnas?

# - Rubrik
# - Beskrivning
# - Plats
# - Start/slut
# - Omfattning
# - kontakt
# - söklänk
# - "Vi söker dig som" - målbild