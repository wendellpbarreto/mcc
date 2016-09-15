class CreateJustificationTerms < ActiveRecord::Migration
  def change
    create_table :justification_terms do |t|
      t.references :justification, index: true
      t.references :term, index: true

      t.timestamps
    end
  end
end
