class AddExperiencesAssociationToUser < ActiveRecord::Migration
  def change
    add_column :experiences, :user_id, :integer
  end
end
