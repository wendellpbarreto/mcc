class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :legal_representer
      t.string :cpf_cnpj
      t.string :address
      t.string :contact
      t.string :role
      t.string :start_of_period
      t.string :end_of_period
      t.string :justification_description
      t.string :removing_way
      t.string :returning_way
      t.string :number_of_items

      t.timestamps
    end
  end
end
