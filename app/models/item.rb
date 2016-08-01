class Item < ActiveRecord::Base
  belongs_to :category
  has_many :line_items

  def self.available_items
    available_items = []
    Item.all.map do |i|
      if i.inventory > 0
        available_items << i.title
      end
    end
    available_items
  end

end
