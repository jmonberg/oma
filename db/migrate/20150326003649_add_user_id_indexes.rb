class AddUserIdIndexes < ActiveRecord::Migration
  def change
    # Add indexes on the user_id field in 2 tables: profiles, and policy_ideas.
    # Would have preferred to create foreign keys on the user_id field, but
    # SQLite3 does not support them.
    add_index :profiles,     :user_id
    add_index :policy_ideas, :user_id
  end
end
