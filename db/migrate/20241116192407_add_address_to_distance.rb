class AddAddressToDistance < ActiveRecord::Migration[6.1]
  def change
    add_reference :distances, :to_address, null: true, foreign_key: {to_table: :addresses}
    add_reference :distances, :from_address, null: true, foreign_key: {to_table: :addresses}
  end
end
