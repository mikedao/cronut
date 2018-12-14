class Import

  def self.items_hash
    file = File.read('./data/cronut.json')
    hash = JSON.parse(file)
    return hash["items"]["item"]
  end

  def self.items
    items_array = []
    self.items.each do |item|
      items_array << Item.new(item["id"]
                              item["type"],
                              item["name"],
                              item["ppu"])
    end
  end

end