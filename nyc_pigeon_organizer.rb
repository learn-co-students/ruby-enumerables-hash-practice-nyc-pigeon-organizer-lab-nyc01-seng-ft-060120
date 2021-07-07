
def nyc_pigeon_organizer(data)
new_hash = {}

data.each_pair do |key, key_hash|
  key_hash.each_pair do |color_name, names_array|
    names_array.each do |pigeon_name|
      new_hash[pigeon_name] = {}
    end
  end
end

data.each_pair do |key1, key_hash|
  key_hash.each_pair do |key2, val|
    val.each do |name|
      new_hash[name][key1] = []
      new_hash[name][key1] << key2.to_s 
    end
  end
end

data[:color].each do |key, val|
  val.each do |name|
    if !new_hash[name][:color].include?(key.to_s)
      new_hash[name][:color] << key.to_s
    end
  end
end
new_hash
end
