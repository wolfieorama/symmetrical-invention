class RemoveSecTeamIdFromEmployee < ActiveRecord::Migration
  def change
    remove_column :employees, :sec_team_id, :integer
  end
end
