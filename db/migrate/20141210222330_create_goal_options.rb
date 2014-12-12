class CreateGoalOptions < ActiveRecord::Migration
  def change
    create_table :goal_options do |t|
      t.string :name
      t.integer :quantity
      t.timestamps
    end
  end
end
