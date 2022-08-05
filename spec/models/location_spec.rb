# == Schema Information
#
# Table name: locations
#
#  id                 :bigint           not null, primary key
#  name               :text
#  available_vaccines :integer
#  phone              :text
#  city               :text
#  state              :text
#  street             :text
#  zip                :text
#  location_type      :text
#  appointment        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  url                :text
#
require 'rails_helper'

RSpec.describe Location, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
