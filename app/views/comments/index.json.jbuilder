json.array!(@comments) do |comment|
  json.extract! comment, :content, :email
  json.url comment_url(comment, format: :json)
end