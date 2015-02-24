json.array!(@lists) do |list|
  json.extract! list, :id, :artist_name, :album_name, :song_name, :format, :length, :size
  json.url list_url(list, format: :json)
end
