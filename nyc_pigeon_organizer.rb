require 'pry'


def nyc_pigeon_organizer(data)

final_results = data.each_with_object({}) do |(key,value), final_array|

value.each do |inner_key,names|
  names.each do |pigeon|
    if !final_array[pigeon]
      final_array[pigeon] = {}
    end
    if !final_array[pigeon][key]
      final_array[pigeon][key] = []
    end
    final_array[pigeon][key].push(inner_key.to_s)

end
end
end

pp final_results
#binding.pry
end

#binding.pry


#final_array[pigeon] = {key => [inner_key.to_s]}
