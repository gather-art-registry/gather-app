class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :title
      t.text :body
      t.integer :order
      t.string :page

      t.timestamps
    end
  end
end
