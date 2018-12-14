class JsonAdapter

  def get_json(filepath)
    json_file = File.read(filepath)
    JSON.parse(json_file, symbolize_names: true)
  end

end
