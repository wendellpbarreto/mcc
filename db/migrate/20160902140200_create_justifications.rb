class CreateJustifications < ActiveRecord::Migration
  def change
    create_table :justifications do |t|
      t.string :text

      t.timestamps
    end
  end
end
