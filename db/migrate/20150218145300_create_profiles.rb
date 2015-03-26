class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string   :title
      t.text     :body
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :url
      t.string   :location
      t.string   :username
      t.integer  :user_id
      t.string   :image_url
      t.datetime :suspended_at
      t.string   :suspension_status
      t.timestamps
    end
  end
end
