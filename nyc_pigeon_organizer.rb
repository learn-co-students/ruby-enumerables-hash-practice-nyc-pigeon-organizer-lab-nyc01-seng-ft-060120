def nyc_pigeon_organizer(data)
  result = data.each_with_object({}) do |(key, value), result|
    value.each do |inner_key, names|
      names.each do |name|
        if !result[name]
          result[name] = {}
        end
        if !result[name][key]
          !result[name][key] = []
        end
        result[name][key].push(inner_key.to_s)
      end
    end  
  end
end
 
 
