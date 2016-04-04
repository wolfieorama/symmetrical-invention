json.array!(@teammemberships) do |teammembership|
  json.extract! teammembership, :id, :employee_id, :team_id
  json.url teammembership_url(teammembership, format: :json)
end
