class CreateBubbleGames < ActiveRecord::Migration[5.1]
  def change
    create_table :bubble_games do |t|
      t.string :pseudo
      t.integer :score

      t.timestamps
    end
  end
end
