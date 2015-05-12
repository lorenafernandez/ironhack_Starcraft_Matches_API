class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string	:winner_faction
      t.string	:loser_faction
      t.time :duration
      t.datetime :start
      t.integer :winner_id
      t.integer :loser_id
      t.timestamps
    end
  end
end
