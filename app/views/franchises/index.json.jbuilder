json.array!(@franchises) do |franchise|
  json.extract! franchise, :id, :email, :encrypted_password, :address, :fid, :school_id
  json.url franchise_url(franchise, format: :json)
end
