class CreateVisitations < ActiveRecord::Migration
  def self.up
    create_table :visitations do |t|
      t.datetime :visited_at
      t.integer :pet_id
      t.text :comments
      t.text :prescription

      t.timestamps
    end
  end

  def self.down
    drop_table :visitations
  end
end
