# == Schema Information
#
# Table name: terms
#
#  id                        :integer          not null, primary key
#  legal_representer         :string(255)
#  cpf_cnpj                  :string(255)
#  address                   :string(255)
#  contact                   :string(255)
#  role                      :string(255)
#  start_of_period           :string(255)
#  end_of_period             :string(255)
#  justification_description :string(255)
#  removing_way              :string(255)
#  returning_way             :string(255)
#  number_of_items           :string(255)
#  created_at                :datetime
#  updated_at                :datetime
#

class Term < ActiveRecord::Base
	has_many :artworks, dependent: :destroy
	has_many :justification_terms, dependent: :destroy
	has_many :justifications, through: :justification_terms

	accepts_nested_attributes_for :artworks, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :justifications, reject_if: :all_blank, allow_destroy: false
end
