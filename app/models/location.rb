# == Schema Information
#
# Table name: locations
#
#  id            :bigint           not null, primary key
#  name          :text
#  phone         :text
#  city          :text
#  state         :text
#  street        :text
#  zip           :text
#  location_type :text
#  appointment   :text             default([]), is an Array
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  url           :text
#  testing       :boolean
#  vaccines      :boolean
#
class Location < ApplicationRecord
  has_rich_text :notes

  #has_many Events
  LOCATION_TYPES = %w(Clinic Bar Event Other).freeze
  APPOINTMENT_TYPES = ['Appointment Only', 'Walk-up'].freeze
  validates :name, :location_type, :city, :state, presence: true
  validates :location_type, inclusion: {in: LOCATION_TYPES}
  validates :appointment, inclusion: {in: APPOINTMENT_TYPES}

  private

end
