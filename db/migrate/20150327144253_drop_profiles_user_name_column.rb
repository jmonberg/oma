class DropProfilesUserNameColumn < ActiveRecord::Migration
  def change
    # This column is no longer necessary as the Profile's User Name 
    # can be read from the users table via the profiles.user_id column.
    remove_column :profiles, :username, :string
  end
end
