class AddPolicyCategoryIdToPolicyIdea < ActiveRecord::Migration
  def change
    add_column :policy_ideas, :policy_category_id, :integer
  end
end
