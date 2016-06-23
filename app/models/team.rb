class Team < ActiveRecord::Base
  mount_uploader :photo, ImageUploader

  validates_presence_of :name, :position, :description, :photo
  validates_uniqueness_of :name
end
