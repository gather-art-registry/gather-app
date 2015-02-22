class CreateTypeOfProducts < ActiveRecord::Migration
  def change
    create_table :type_of_products do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
