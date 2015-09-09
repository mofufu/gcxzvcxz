json.array!(@parents) do |parent|
  json.extract! parent, :id, :fdasa
  json.url parent_url(parent, format: :json)
end
