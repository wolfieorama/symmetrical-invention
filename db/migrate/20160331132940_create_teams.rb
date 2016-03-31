class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.references :sec_team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
