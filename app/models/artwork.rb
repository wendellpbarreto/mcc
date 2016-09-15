# == Schema Information
#
# Table name: artworks
#
#  id                    :integer          not null, primary key
#  image                 :string(255)
#  register_number       :string(255)
#  name                  :string(255)
#  material              :string(255)
#  dimensions            :string(255)
#  state_of_conservation :string(255)
#  observation           :string(255)
#  term_id               :integer
#  created_at            :datetime
#  updated_at            :datetime
#

class Artwork < ActiveRecord::Base
	belongs_to :term

	mount_uploader :image, ImageUploader
end
