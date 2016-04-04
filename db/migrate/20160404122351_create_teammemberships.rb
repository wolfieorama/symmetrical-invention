class CreateTeammemberships < ActiveRecord::Migration
  def change
    create_table :teammemberships do |t|
      t.references :employee, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
