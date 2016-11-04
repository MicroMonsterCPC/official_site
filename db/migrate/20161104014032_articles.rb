class Articles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.text :index
      t.text :about
    end
  end
end
