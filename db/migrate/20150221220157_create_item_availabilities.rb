class CreateItemAvailabilities < ActiveRecord::Migration
  def change
    create_table :item_availabilities do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
