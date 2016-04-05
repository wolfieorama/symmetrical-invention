class Team < ActiveRecord::Base
  #self join within teams
  has_many :team_memberships
  has_many :employees, through: :team_memberships

  #across users
  belongs_to :manager, class_name: "Employee"
end
