class Employee < ActiveRecord::Base
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee"

  belongs_to :team, foreign_key: "team_id"
  has_one :managed_team, foreign_key: "manager_id", class_name: "Team"
end
