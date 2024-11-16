class Distance < ApplicationRecord
  belongs_to :to_address, optional: false, class_name: "Address"
  belongs_to :from_address, optional: false, class_name: "Address"

  accepts_nested_attributes_for :to_address
  accepts_nested_attributes_for :from_address
end
