class AddCategoryIdToShampooitems < ActiveRecord::Migration[6.1]
  def change
    add_column :shampooitems, :category_id, :integer
  end
end
