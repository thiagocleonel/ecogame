json.extract! donation, :id, :citizen_id, :ecopoint_id, :material_id, :weight, :created_at, :updated_at
json.url donation_url(donation, format: :json)
