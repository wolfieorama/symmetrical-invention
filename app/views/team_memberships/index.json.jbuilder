json.array!(@team_memberships) do |team_membership|
  json.extract! team_membership, :id, :employee_id_id, :team_id_id
  json.url team_membership_url(team_membership, format: :json)
end
