json.array!(@children) do |child|
  json.extract! child, :id, : name, :school_id, :user_id, :meal_id
  json.url child_url(child, format: :json)
end
