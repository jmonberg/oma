class CreatePolicyIdeas < ActiveRecord::Migration
  def change
    create_table :policy_ideas do |t|
      t.string  :category
      t.string  :title
      t.string  :author
      t.text    :body
      t.string  :imglink1
      t.string  :imglink2
      t.string  :caption1
      t.string  :caption2
      t.timestamps
      t.integer  :user_id
      t.integer  :votes_count
      t.datetime :suspended_at
      t.string   :suspension_status
    end
  end
end
