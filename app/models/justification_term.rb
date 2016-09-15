# == Schema Information
#
# Table name: justification_terms
#
#  id               :integer          not null, primary key
#  justification_id :integer
#  term_id          :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class JustificationTerm < ActiveRecord::Base
  belongs_to :justification
  belongs_to :term
end
