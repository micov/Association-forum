# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  liu_id     :string(255)
#

class User < ActiveRecord::Base   
  attr_accessible :liu_id , :admin

  before_save { |user| user.liu_id = liu_id.downcase }

  #relationships
  has_and_belongs_to_many :associations

  Valid_liu_id_regex =  /[a-z]{5}+[0-9]{3}/
  validates :liu_id, presence: true, format: { with: Valid_liu_id_regex }, uniqueness: true  

  def admin?
   User.where(liu_id: self.liu_id).having(admin: true)
#    admins = User.where(admin: true).all
#      admin.liu_id == user.liu_id   
  end
    

end
