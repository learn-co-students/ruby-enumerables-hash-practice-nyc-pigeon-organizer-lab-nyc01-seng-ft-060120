require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  data.each_with_object({}) do |(key, value), final_arr|
    # binding.pry
    value.each do |inner_key, name|
      # binding.pry
      name.each do |name|
        if !final_arr[name]
          final_arr[name] = {}
        end
        if !final_arr[name][key]
          final_arr[name][key] = []
        end
        final_arr[name][key] << inner_key.to_s
      end
    end
  end
    
end
