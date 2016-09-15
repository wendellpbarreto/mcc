class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :image
      t.string :register_number
      t.string :name
      t.string :material
      t.string :dimensions
      t.string :state_of_conservation
      t.string :observation
      t.references :term, index: true

      t.timestamps
    end
  end
end
