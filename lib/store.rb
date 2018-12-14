class Store

  attr_reader :pastries

  def initialize
    @pastries = []
  end

  def generate_pastries
    read_json[:items][:item].each do |item_data|
      new_item = Item.new(item_data)
      new_item.add_batters
      new_item.add_toppings
      @pastries << new_item
    end
  end

  private

  def read_json
    JsonAdapter.new.get_json('./data/cronut.json')
  end

end
