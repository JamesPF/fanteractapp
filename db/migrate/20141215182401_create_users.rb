class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :artist_name
      t.string :genre
      t.string :bio
      t.string :contact_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :email
      t.string :password_digest
      t.string :bank_name
      t.string :account_holder_name
      t.string :account_type
      t.integer :account_number
      t.integer :routing_number

      t.timestamps
    end
  end
end
