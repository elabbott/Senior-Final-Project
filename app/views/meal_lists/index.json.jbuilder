json.array!(@meal_lists) do |meal_list|
  json.extract! meal_list, :id, :meal_id, :franchise_id
  json.url meal_list_url(meal_list, format: :json)
end
