json.array!(@parent_children) do |parent_child|
  json.extract! parent_child, :id
  json.url parent_child_url(parent_child, format: :json)
end
