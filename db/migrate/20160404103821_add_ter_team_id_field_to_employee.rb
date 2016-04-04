class AddTerTeamIdFieldToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :ter_team_id, :integer
  end
end
