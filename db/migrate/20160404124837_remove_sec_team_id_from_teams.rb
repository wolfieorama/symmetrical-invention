class RemoveSecTeamIdFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :sec_team_id, :integer
  end
end
