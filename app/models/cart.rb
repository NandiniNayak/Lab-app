class Cart < ActiveRecord::Base
  has_many :line_items,dependent: :destroy


  def add_product(publication_id)
    current_item = line_items.find_by(publication_id: publication_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(publication_id: publication_id)
    end
    current_item
  end

  def total_price
    line_items.to_a.sum {|item|item.total_price}
  end
end
