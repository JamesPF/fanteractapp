class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.float :price
      t.integer :amount_available
      t.string :availability
      t.string :description

      t.timestamps
    end
  end
end
