json.extract! carinfo, :id, :car_id, :plate, :owner, :created_at, :updated_at
json.url carinfo_url(carinfo, format: :json)
