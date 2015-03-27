json.array!(@policy_categories) do |policy_category|
  json.extract! policy_category, :id
  json.url policy_category_url(policy_category, format: :json)
end
