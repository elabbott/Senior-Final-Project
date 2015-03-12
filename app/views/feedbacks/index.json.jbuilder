json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :f_type, :title, :descr, :date_submitted
  json.url feedback_url(feedback, format: :json)
end
