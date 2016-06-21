class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :main_image
      t.string :secondary_image
      t.string :optional_image
      t.string :title
      t.text :main_description
      t.string :client
      t.string :role
      t.string :agency
      t.date :date
      t.text :left_description
      t.text :right_description
      t.references :team, index: true, foreign_key: true
      t.string :footer_title
      t.text :footer_description
      t.string :slug_id
      t.string :brief_description

      t.timestamps null: false
    end
  end
end
