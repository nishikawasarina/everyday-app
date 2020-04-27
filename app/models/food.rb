class Food < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, :start_time, presence: true
end
