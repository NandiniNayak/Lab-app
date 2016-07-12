class LineItem < ActiveRecord::Base
  belongs_to :publication
  belongs_to :order
  belongs_to :cart

  def total_price
    publication.price * quantity
  end
end


# line_items.to_a.sum {|item|item.total_price}
