json.array!(@music_lists) do |music_list|
  json.extract! music_list, :id, :name, :artist, :album, :song, :format, :length, :size, :user_id
  json.url music_list_url(music_list, format: :json)
end
