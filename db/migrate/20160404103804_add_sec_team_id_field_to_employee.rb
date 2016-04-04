class AddSecTeamIdFieldToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :sec_team_id, :integer
  end
end
