json.extract! transit_stop, :id, :name, :type, :status, :longitude, :latitude, :created_at, :updated_at
json.url transit_stop_url(transit_stop, format: :json)
