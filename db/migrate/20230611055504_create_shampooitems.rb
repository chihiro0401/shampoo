class CreateShampooitems < ActiveRecord::Migration[6.1]
  def change
    create_table :shampooitems do |t|
     
      t.text    :brandname
      t.text    :description
      t.integer :price
      t.timestamps
    end
  end
end
