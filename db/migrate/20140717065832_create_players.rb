class CreatePlayers < ActiveRecord::Migration
  def up
    create_table :players do |t|
    	t.string "player_name"
    	t.string "player_nation"
    	t.integer "player_number"
    	t.integer "club_id"
    	t.integer "player_goals"
    	t.integer "player_assists"
      t.integer "player_passes"
      t.string "player_position"
      t.string "player_image"
      t.timestamps
    end
  end

  def down
    drop_table :players
  end
end
