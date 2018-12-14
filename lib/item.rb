class Item

  attr_reader :id,
              :type,
              :name,
              :ppu,
              :batter,
              :toppings

  def initialize(item_data)
    @id =       item_data[:id]
    @type =     item_data[:type]
    @name =     item_data[:name]
    @ppu =      item_data[:ppu]
    @batter =   add_batters(item_data[:batters][:batter])
    @toppings = add_toppings(item_data[:topping])
  end

  def add_batters(batters_data)
    batters_data.map do |batter_data|
      Batter.new(batter_data)
    end
  end

  def add_toppings(toppings_data)
    toppings_data.map do |topping_data|
      Topping.new(topping_data)
    end
  end

end
