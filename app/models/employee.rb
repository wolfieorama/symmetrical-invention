class Employee < ActiveRecord::Base
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee"

  belongs_to :team 
  has_one :team, foreign_key: "manager_id"
end
