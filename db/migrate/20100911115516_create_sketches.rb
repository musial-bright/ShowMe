class CreateSketches < ActiveRecord::Migration
  def self.up
    create_table :sketches do |t|
      t.string :name
      t.text :data

      t.timestamps
    end
  end

  def self.down
    drop_table :sketches
  end
end
