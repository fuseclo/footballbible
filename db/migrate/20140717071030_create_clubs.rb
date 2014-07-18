class CreateClubs < ActiveRecord::Migration
  def up
    create_table :clubs do |t|
    	t.string "club_name"
      t.timestamps
    end
  end

  def down
  	drop_table :clubs
  end
end