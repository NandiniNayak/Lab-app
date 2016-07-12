class AddPriceToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :price, :decimal
  end
end
