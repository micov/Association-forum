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


# - Rubrik -heading
# - Beskrivning - description
# - Plats - location
# - Start/slut - start/end
# - Omfattning - comprehensiveness
# - kontakt - contact
# - söklänk - applicationLink
# - "Vi söker dig som" - målbild - profil (glömde e)

# - ApplicationDeadline 
