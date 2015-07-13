class RenamePolicyCategoryToCategory < ActiveRecord::Migration
  def change
  	# rename_column :table, :old_column, :new_column
  	rename_column :categories, :policy_category, :category_description
  	rename_column :ideas, :policy_category_id, :category_id
  end
end
