class CleanPolicyCategoryValues < ActiveRecord::Migration

  def up
    # Some of the policy_ideas.category values are missing spaces between words.
    # Execute SQL statements to convert them to the proper values.
    PolicyIdea.connection.execute("UPDATE policy_ideas SET category = 'Business Development' WHERE (category)='BusinessDevelopment';")
    PolicyIdea.connection.execute("UPDATE policy_ideas SET category = 'Dense Mixed Use' WHERE (category)='DenseMixedUse';")
    PolicyIdea.connection.execute("UPDATE policy_ideas SET category = 'Environmental Sustainability' WHERE (category)='EnvironmentalSustainability';")
  end
end
