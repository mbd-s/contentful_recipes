class AddChefToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_reference :recipes, :chef, null: true, foreign_key: true
  end
end
