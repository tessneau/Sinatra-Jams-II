class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :brand
      t.integer :artist_id
    end
  end
end
