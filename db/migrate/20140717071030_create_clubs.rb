class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
    	t.string "club_name"
      t.timestamps
    end
  end
end