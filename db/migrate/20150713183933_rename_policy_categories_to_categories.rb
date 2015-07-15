class RenamePolicyCategoriesToCategories < ActiveRecord::Migration
  def change
  	rename_table :policy_categories, :categories 
  end
end
