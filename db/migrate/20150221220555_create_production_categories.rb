class CreateProductionCategories < ActiveRecord::Migration
  def change
    create_table :production_categories do |t|
    	t.string :name
      t.string :description

      t.timestamps
    end
  end
end
