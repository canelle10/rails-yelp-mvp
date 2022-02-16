class RenameAdressInRestaurants < ActiveRecord::Migration[6.1]
  def change
    change_table :restaurants do |t|
      t.rename :adress, :address
    end
  end
end
