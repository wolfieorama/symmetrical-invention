class AddTeamIdToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :team_id, :integer
  end
end
