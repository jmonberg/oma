class AddIndexToPolicyIdeasPolicyCategoryId < ActiveRecord::Migration
  def change
    add_index :policy_ideas, :policy_category_id
  end
end
