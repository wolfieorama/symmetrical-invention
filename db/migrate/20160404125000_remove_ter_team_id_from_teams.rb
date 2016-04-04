class RemoveTerTeamIdFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :ter_team_id, :integer
  end
end
