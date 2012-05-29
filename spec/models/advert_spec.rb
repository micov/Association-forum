require 'spec_helper'

describe Advert do
  pending "add some examples to (or delete) #{__FILE__}"
end
# == Schema Information
#
# Table name: adverts
#
#  id                  :integer         not null, primary key
#  heading             :string(255)
#  association_id      :integer
#  created_at          :datetime        not null
#  updated_at          :datetime        not null
#  user_id             :integer
#  description         :string(255)
#  location            :string(255)
#  comprehensiveness   :string(255)
#  contact             :string(255)
#  applicationLink     :string(255)
#  profile             :string(255)
#  start               :string(255)
#  end                 :string(255)
#  applicationDeadline :date
#

