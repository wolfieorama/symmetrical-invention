class Team < ActiveRecord::Base
  #self join within teams
  has_one :sec_team, class_name: "Team", foreign_key: "sec_team_id"
  has_one :ter_team, class_name: "Team", foreign_key: "ter_team_id"

  #across users
  has_many :employees, foreign_key: "employee_id"
  belongs_to :manager, class_name: "Employee"
end
