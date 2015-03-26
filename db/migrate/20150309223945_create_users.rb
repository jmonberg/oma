class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :logon
      t.text :email
      t.text :profile
      t.text :display_name
      t.timestamps
    end
  end
end
