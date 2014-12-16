class AddOrdersAssociationToExperience < ActiveRecord::Migration
  def change
    add_column :orders, :experience_id, :integer
  end
end
