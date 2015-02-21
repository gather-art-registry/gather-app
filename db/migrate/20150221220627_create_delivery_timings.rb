class CreateDeliveryTimings < ActiveRecord::Migration
  def change
    create_table :delivery_timings do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
