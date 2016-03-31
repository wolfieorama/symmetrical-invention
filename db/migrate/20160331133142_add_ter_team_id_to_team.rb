class AddTerTeamIdToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :ter_team_id, :integer
  end
end
