class Employee < ActiveRecord::Base
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee"

  belongs_to :sec_team, class_name: "Team"
  belongs_to :ter_team, class_name: "Team"

  has_one :team, foreign_key: "manager_id"
end
