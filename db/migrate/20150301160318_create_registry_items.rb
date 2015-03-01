class CreateRegistryItems < ActiveRecord::Migration
  def change
    create_table :registry_items do |t|
      t.references :registry, index: true
      t.references :item, index: true

      t.timestamps
    end
  end
end
