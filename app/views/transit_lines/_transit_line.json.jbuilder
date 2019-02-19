json.extract! transit_line, :id, :status, :operating_hours, :type, :restrictions, :reliability, :name, :avg_price, :created_at, :updated_at
json.url transit_line_url(transit_line, format: :json)
