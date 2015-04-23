json.array!(@purchase_meals) do |purchase_meal|
  json.extract! purchase_meal, :id
  json.url purchase_meal_url(purchase_meal, format: :json)
end
