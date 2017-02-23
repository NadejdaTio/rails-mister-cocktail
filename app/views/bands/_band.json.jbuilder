json.extract! band, :id, :name, :style, :description, :rating, :url, :created_at, :updated_at
json.url band_url(band, format: :json)
