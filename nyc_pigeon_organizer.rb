require "pry"
def nyc_pigeon_organizer(data)
  organized_pigeon_hash = {}
  data.each do |k_category_sym, v_detail_hash|
    v_detail_hash.each do |k_detail_sym, v_names_array|
      v_names_array.each do |name_string|
        if !organized_pigeon_hash[name_string]
          organized_pigeon_hash[name_string] = {}
        end
        if !organized_pigeon_hash[name_string][k_category_sym]
            organized_pigeon_hash[name_string][k_category_sym] = []
        end

        organized_pigeon_hash[name_string][k_category_sym] << k_detail_sym.to_s


      end
    end
    # binding.pry
  end
  organized_pigeon_hash
end
