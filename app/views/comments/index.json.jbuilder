json.array!(@comments) do |comment|
  json.extract! comment, :content, :email, :post_id
  json.url comment_url(comment, format: :json)
end