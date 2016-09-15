# == Schema Information
#
# Table name: justifications
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Justification < ActiveRecord::Base
	has_many :justification_terms, dependent: :destroy
	has_many :terms, through: :justification_terms
end
