class AddOptionalImageVisibilityToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :optional_image_visibility, :boolean
  end
end
