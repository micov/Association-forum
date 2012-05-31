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

  #ensure that user_liuid is always saved with lower-case letters
  before_save { |user| user.liuid = liuid.downcase }

  #relationships
  has_and_belongs_to_many :associations

  #A regexpression for liu_ids
  Valid_liu_id_regex =  /[a-z]{5}+[0-9]{3}/
  
  #Validations for the different attributes
  validates :liuid, presence: true, format: { with: Valid_liu_id_regex }, uniqueness: true  

  #Checks if a user is associated with any organisations
  def has_associations?
   !self.associations.empty?
  end
  
  

end
