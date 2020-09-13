class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :image_url
      t.text :tags, array: true, default: []
      t.text :description

      t.timestamps
    end
  end
end
