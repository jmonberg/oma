json.array!(@profiles) do |profile|
  json.extract! profile, :id, :title, :body, :created_at, :updated_at, :url, :location, :username, :user_id, :image_url, :suspended_at, :suspension_status
  json.url profile_url(profile, format: :json)
end
