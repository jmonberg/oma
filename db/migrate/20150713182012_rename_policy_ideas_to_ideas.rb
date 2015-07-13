class RenamePolicyIdeasToIdeas < ActiveRecord::Migration
  def change
  	rename_table :policy_ideas, :ideas
  end
end
