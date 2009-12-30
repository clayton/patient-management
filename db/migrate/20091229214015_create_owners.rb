class CreateOwners < ActiveRecord::Migration
  def self.up
    create_table :owners do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :owners
  end
end
