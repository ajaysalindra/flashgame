class AddSwfToGames < ActiveRecord::Migration
  def change
    add_column :games, :swf, :string
  end
end
