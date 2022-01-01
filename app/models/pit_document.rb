class PitDocument < ApplicationRecord
  mount_uploader :pdf, PdfUploader
  mount_uploader :picture, PictureUploader

  has_many :pit_blocks

  validates :pdf, presence: true
end
