require 'pry'
def nyc_pigeon_organizer(data)
final_results = data.each_with_object({}) do |(key, value), array|
  value.each do |inner_key, names|
    names.each do |name|
      if !array[name]
        array[name] = {}
      end 
      if !array[name][key]
        !array[name][key] = []
      end 
      array[name][key].push(inner_key.to_s)
      binding.pry 
    end 
end
end 
end 
