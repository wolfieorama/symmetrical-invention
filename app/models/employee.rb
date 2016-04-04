class Employee < ActiveRecord::Base
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee"

  belongs_to :team, foreign_key: "team_id", class_name: "Team"
  belongs_to :sec_team, foreign_key: "sec_team_id", class_name: "Team"
  belongs_to :ter_team, foreign_key: "ter_team_id", class_name: "Team"
  has_one :managed_team, foreign_key: "manager_id", class_name: "Team"
end
