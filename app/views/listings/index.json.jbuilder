json.array!(@listings) do |listing|
  json.extract! listing, :title, :description, :date_of_birth, :image_url, :meeting_venue, :meeting_time, :date_of_death, :comments
  json.url listing_url(listing, format: :json)
end
