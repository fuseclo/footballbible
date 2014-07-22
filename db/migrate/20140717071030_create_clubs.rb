class CreateClubs < ActiveRecord::Migration
  def up
    create_table :clubs do |t|
    	t.string "club_name"
    	t.string "club_goals"
    	t.string "club_assists"
    	t.string "club_position"
    		
      t.timestamps
    end
  end

  def down
  	drop_table :clubs
  end
end