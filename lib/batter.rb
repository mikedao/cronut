class Batter
  attr_reader :id,
              :type

  def initialize(id, type)
    @id = id
    @type = type
  end

  def self.parse(batter_array)
    batter_array.map do |batter|
      Batter.new(batter["id"],
                batter["type"])
    end
  end
end
