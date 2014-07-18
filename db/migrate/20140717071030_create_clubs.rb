class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
    	t.string "club_name"
    	t.integer "player_id"
      t.timestamps
    end
    add_index("clubs", "player_id")
  end
end