class CreateArticles < ActiveRecord::Migration
  def up
    create_table :articles do |t|
    	t.string "article_title"
    	t.text "article_small"
    	t.text "article_big"
    	t.string "article_image"
    	t.integer "player_id"
    	t.integer "club_id"
      t.timestamps
    end
    
  end

  def down
  	drop_table :articles
  end
end
