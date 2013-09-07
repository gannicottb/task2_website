class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.String :title
      t.String :link

      t.timestamps
    end
  end
end
