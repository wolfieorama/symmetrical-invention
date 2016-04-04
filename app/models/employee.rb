class Employee < ActiveRecord::Base
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee"

  has_many :team_memberships
  has_many :teams, through: :team_memberships

  has_one :managed_team, foreign_key: "manager_id", class_name: "Team"
end
