class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :position
      t.text :description
      t.string :photo

      t.timestamps null: false
    end
  end
end
