class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :first
      t.integer :second
      t.integer :thread
      t.timestamps
    end
  end
end
