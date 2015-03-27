class CreatePolicyCategories < ActiveRecord::Migration
  def change
    create_table :policy_categories do |t|
      t.string      "policy_category"
      t.timestamps
    end
  end
end
