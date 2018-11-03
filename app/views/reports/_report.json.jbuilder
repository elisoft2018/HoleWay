json.extract! report, :id, :damage_id, :photography, :location, :comment, :enabled, :created_at, :updated_at
json.url report_url(report, format: :json)
