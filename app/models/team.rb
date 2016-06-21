class Team < ActiveRecord::Base
  validates_presence_of :name, :position, :description, :photo
  validates_uniqueness_of :name
end
