json.array!(@publications) do |publication|
  json.extract! publication, :id, :name, :authors, :journal
  json.url publication_url(publication, format: :json)
end
