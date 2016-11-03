class CreateGameScores < ActiveRecord::Migration[5.0]
  def change
    create_table :game_scores do |t|
      t.integer :game_id
      t.integer :score_id
      t.timestamps
    end
  end
end
