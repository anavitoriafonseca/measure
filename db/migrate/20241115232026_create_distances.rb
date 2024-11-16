class CreateDistances < ActiveRecord::Migration[6.1]
  def change
    create_table :distances do |t|
      t.string :distance
      t.integer :from
      t.integer :to

      t.timestamps
    end
  end
end
