class DropPolicyIdeasAuthorColumn < ActiveRecord::Migration
  def change
    # This column is no longer necessary as the Author's name can be 
    # read from the users table via the policy_ideas.user_id column.
    remove_column :policy_ideas, :author, :string
  end
end
