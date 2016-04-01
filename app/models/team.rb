class Team < ActiveRecord::Base
  #self join within teams
  has_one :sec_team_for, class_name: "Team", foreign_key: "sec_team_id"
  has_one :ter_team_for, class_name: "Team", foreign_key: "ter_team_id"
  belongs_to :sec_team, class_name: "Team"
  belongs_to :ter_team, class_name: "Team"

  #across users
  has_many :subordinates, class_name: "Employee", foreign_key: "subordinate_id"
  belongs_to :manager, class_name: "Employee"
end
