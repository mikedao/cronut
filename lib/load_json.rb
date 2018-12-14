require './lib/batter'
require './lib/topping'
require './lib/item'
require 'pry'

class LoadJson

  def initialize(file_path)
    @file_path = file_path
  end

  def load_json_doughnuts
    json = File.read(@file_path)
    parsed_json = JSON.parse(json, symbolize_names: true)
  end

  def map_doughnuts(parsed_json)
    parsed_json[:items][:item].map do |item|
      Item.new(item)
    end
  end
end

LoadJson.new('./data/cronut.json').load_json_doughnuts
