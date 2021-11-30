class PitDocument < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :pit_blocks
end
