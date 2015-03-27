class DropPolicyIdeasCategoryField < ActiveRecord::Migration
  def change
    # This column has been superceded by the policy_category_id column
    # and is no longer needed.
    remove_column :policy_ideas, :category, :string
  end
end
