class AddActiveToPolicyCategories < ActiveRecord::Migration
  def up
    add_column :policy_categories, :active_category, :boolean
  end

  def down
    remove_column :policy_categories, :active_category
  end
end
