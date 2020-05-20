def nyc_pigeon_organizer(data)
  # write your code here!
  #pigeon_data 
  
  new_data = data.each_with_object({}) do |(key, value), new_data|
    value.each do |inner_key, name|
      name.each do |name|
        if !new_data[name]
          new_data[name] = {}
        end
        if !new_data[name][key]
          !new_data[name][key] = []
        end
        new_data[name][key].push(inner_key.to_s)
      end
    end
  end
end
