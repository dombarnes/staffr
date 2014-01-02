json.array!(@holiday_entitlements) do |holiday_entitlement|
  json.extract! holiday_entitlement, :id, :staff_id, :holiday_year_start, :holiday_days
  json.url holiday_entitlement_url(holiday_entitlement, format: :json)
end
