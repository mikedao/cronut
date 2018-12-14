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
    @batters_data = item_data[:batters][:batter]
    @toppings_data = item_data[:topping]
    @batter = []
    @toppings = []
  end

  def add_batters
    @batters_data.map do |batter_data|
      @batter << Batter.new(batter_data)
    end
  end

  def add_toppings
    @toppings_data.map do |topping_data|
      @toppings << Topping.new(topping_data)
    end
  end

end
