class RemoveTeamIdFromEmployee < ActiveRecord::Migration
  def change
    remove_column :employees, :team_id, :integer
  end
end
