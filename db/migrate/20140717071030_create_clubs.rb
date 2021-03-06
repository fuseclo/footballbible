class CreateClubs < ActiveRecord::Migration
  def up
    create_table :clubs do |t|
    	t.string "club_name"
    	t.string "club_goals"
    	t.string "club_assists"
    	t.string "club_position"
      t.string "club_manager"
      t.string "club_founded"
      t.string "club_image"    		
      t.timestamps
    end
  end

  def down
  	drop_table :clubs
  end
end