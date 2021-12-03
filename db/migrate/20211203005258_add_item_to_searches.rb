class AddItemToSearches < ActiveRecord::Migration[5.2]
  def change
    add_reference :searches, :item, foreign_key: true
  end
end
