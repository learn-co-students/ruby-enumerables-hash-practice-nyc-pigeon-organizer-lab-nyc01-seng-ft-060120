def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do |key, a_value| 
    a_value.each do |new_key, names| 
      names.each do |name| 
      
        if !pigeon_list[name]
            pigeon_list[name] = {}
         end
        
        if
            !pigeon_list[name][key]
             pigeon_list[name][key] = []
        end
        pigeon_list[name][key] << new_key.to_s
      end
    end 
  end
  pigeon_list
end
