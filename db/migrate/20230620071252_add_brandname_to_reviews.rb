class AddBrandnameToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :brandname, :text
  end
end
