class Portfolio < ActiveRecord::Base
  belongs_to :team

  before_save :generate_slug_id
  before_create :assign_team

  validates_presence_of :main_image, :secondary_image, :optional_image, :title,
                        :main_description, :client, :role, :agency, :date,
                        :left_description, :right_description, :footer_title,
                        :footer_description, :brief_description
  validates_uniqueness_of :title

  private

  def generate_slug_id
    self.slug_id = self.title[0..47].parameterize
  end

  def assign_team
    self.team = Team.all.sample
  end
end
