class Hefan < ActiveRecord::Base
  validates :name, :photo, presence: true
  belongs_to :restaurant
  mount_uploader :photo, PhotoUploader
end
