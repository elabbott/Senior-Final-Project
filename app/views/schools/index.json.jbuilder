json.array!(@schools) do |school|
  json.extract! school, :id, : name, :address, :school_id, :user_id, :int[], :meal_id, :int[]
  json.url school_url(school, format: :json)
end
