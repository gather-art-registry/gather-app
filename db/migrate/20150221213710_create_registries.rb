class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
      t.string :type_of_event
      t.string :image
      t.date :event_date
      t.date :registry_close_date
      t.text :story
      t.string :event_website
      t.text :delivery_instructions
      t.text :notes
      t.boolean :publish
      t.references :user, index: true

      t.timestamps
    end
  end
end
