require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  final_results = data.each_with_object({}) do |(key, value), new_array|
    value.each do |inner_key, names|
      names.each do |name|
        if !new_array[name]
          new_array[name] = {}
        end
        if !new_array[name][key]
          new_array[name][key] = []
        end
        if names.include?(name)
          new_array[name][key] << inner_key.to_s 
        end
      end
    end
  end
  final_results
end
  