require 'pry'


def nyc_pigeon_organizer(data)
  #we are assigning the entire iteration the name of 'final_results' so that we can call it later on.
  #in data.each_with_object method, we are drilling down to the first order of keys/value pairs
  #and creating a new hash called 'final_hash'
  final_results = data.each_with_object({}) do |(key,value), final_hash|
    #Because the first order values are hashes themselves, we iterate through them with .each,
    #this will allow us to get the inner keys (:purple, :male, "Central Park") and their corresponding values,
    #i.e., the pigeon names ("Alex","Theo","Lucky", etc.)
    value.each do |inner_key,names|
      #We iterate once more through the inner most array containing the pigeon names
      #in order to start populating our new hash from top to bottom.
      names.each do |pigeon|
        #We need to check if the final_hash[pigeon] exists bc if it doesn't it will return a nil since we are
        #not assigning it a value. Here, we are saying, if final_hash[pigeon] is false...
        if !final_hash[pigeon] #Could also be written as "if final_hash[pigeon] || = {} " and line 20 would not be needed or the if/end.
           #create an empty hash as the value for the key 'pigeon'
           final_hash[pigeon] = {}
        end
        # Now that we have final_hash = { "Theo" => {} }, we want to see if the key in the previously empty hash exists.
        #If the final_hash[pigeon][key] does not exist...(i.e, :color, :gender, :lives)
        if !final_hash[pigeon][key] #Could also be written as "if final_hash[pigeon][key] || = [] " and line 26 would not be needed or the if/end.
           #Create final_hash[pigeon][key] and set it to an empty array.
           final_hash[pigeon][key] = []
        end
      #Finally, now that the hash has been created and we have added key/value pairs as needed, time to populate
      #the inner most array with data that has been converted to strings.
      final_hash[pigeon][key].push(inner_key.to_s)
      end
    end
  end
  #Pretty print the final_results which is our new hash.
  pp final_results
end
