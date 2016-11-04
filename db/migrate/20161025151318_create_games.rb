class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :banner_url
      t.string :title
      t.string :create_team
      t.text :bio
      t.integer :like, null: false, default: 1

      t.timestamps
    end
  end
end
