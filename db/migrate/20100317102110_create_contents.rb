class CreateContents < ActiveRecord::Migration
  def self.up
    create_table :contents do |t|
      t.text :body
      t.integer :location_id

      t.timestamps
    end
  end

  def self.down
    drop_table :contents
  end
end
