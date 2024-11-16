class Address < ApplicationRecord
  has_many :to_address, class_name: "Distance", foreign_key: :to
  has_many :from_address, class_name: "Distance", foreign_key: :from

  geocoded_by :address
  after_validation :geocode
end
