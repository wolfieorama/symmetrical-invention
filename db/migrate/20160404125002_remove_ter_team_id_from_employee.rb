class RemoveTerTeamIdFromEmployee < ActiveRecord::Migration
  def change
    remove_column :employees, :ter_team_id, :integer
  end
end
