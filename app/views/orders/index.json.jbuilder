json.array!(@orders) do |order|
  json.extract! order, :id, :price, :user_id, :pay_type
  json.url order_url(order, format: :json)
end
