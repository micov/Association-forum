# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  liuid      :string(255)
#  admin      :boolean         default(FALSE)
#

class User < ActiveRecord::Base   
  attr_accessible :liuid , :admin

  before_save { |user| user.liuid = liuid.downcase }

  #relationships
  has_and_belongs_to_many :associations

  Valid_liu_id_regex =  /[a-z]{5}+[0-9]{3}/
  validates :liuid, presence: true, format: { with: Valid_liu_id_regex }, uniqueness: true  

  def has_associations?
   !self.associations.empty?
  end
  
  

end
