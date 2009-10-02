class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.belongs_to :subcategory
      t.string :name
      t.text :description
      t.date :date, :null => false    
      t.integer :year, :null => false
      t.integer :month, :null => false
      t.float :value

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
