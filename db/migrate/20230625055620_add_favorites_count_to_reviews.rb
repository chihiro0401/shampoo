class AddFavoritesCountToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :favorites_count, :integer
  end
end
