def nyc_pigeon_organizer(data)
  pigeon_names = Hash.new  #Createsnewhash
  data.each do |key, value|    #takes data from spec file runs it in argument looping it
    value.each do |new_key, names| #runs the value from spec file into argument looping it
      names.each do |name| #runs names through spec file into argument looping it

        if !pigeon_names[name]   #if it does not equal then
          pigeon_names[name] = {}
        end

        if !pigeon_names[name][key]
            pigeon_names[name][key] = []
        end
        pigeon_names[name][key] << new_key.to_s  #converts the new key to string adding it to end of array
      end
    end
  end
  pigeon_names  #displays everything 
end
