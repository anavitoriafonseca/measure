class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :adress
      t.string :postalCode
      t.string :lat
      t.string :log

      t.timestamps
    end
  end
end
