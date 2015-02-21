class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :first_name_2
      t.string :last_name_2
      t.string :username
      t.string :email
      t.string :email_2
      t.string :phone
      t.string :phone_2
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
