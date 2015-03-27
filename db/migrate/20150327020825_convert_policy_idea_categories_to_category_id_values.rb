class ConvertPolicyIdeaCategoriesToCategoryIdValues < ActiveRecord::Migration
  def up
    # Use the policy_ideas.category values to populate the new policy_category_id field.
    # Admittedly, this is a little bit of a brute force approach.  
    # Could probably create a more sophisticated SQL statement to lookup the id values from
    # the policy_cagtegories table, but the model relationships aren't in place just yet.
    PolicyIdea.connection.execute("UPDATE policy_ideas SET policy_category_id = 1 WHERE category = 'Business Development';")
    PolicyIdea.connection.execute("UPDATE policy_ideas SET policy_category_id = 2 WHERE category = 'Cooperation';")
    PolicyIdea.connection.execute("UPDATE policy_ideas SET policy_category_id = 3 WHERE category = 'Dense Mixed Use';")
    PolicyIdea.connection.execute("UPDATE policy_ideas SET policy_category_id = 4 WHERE category = 'Environmental Sustainability';")
    PolicyIdea.connection.execute("UPDATE policy_ideas SET policy_category_id = 5 WHERE category = 'Streetscape';")
    PolicyIdea.connection.execute("UPDATE policy_ideas SET policy_category_id = 6 WHERE category = 'Transportation';")
  end
end
