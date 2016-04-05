class TeamMembership < ActiveRecord::Base
  belongs_to :employee_id
  belongs_to :team_id
end
