class CreateGameScores < ActiveRecord::Migration[5.0]
  def change
    create_table :game_scores do |t|
      t.integer :game_id, null: false
      t.integer :score_id, null: false
      t.timestamps
    end
  end
end
