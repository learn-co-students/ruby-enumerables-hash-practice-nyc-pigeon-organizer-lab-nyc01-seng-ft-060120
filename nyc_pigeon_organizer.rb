def nyc_pigeon_organizer(hash)
  # write your code here!

#make new hash
newHash = {}
hash.each do |cgl,blockofgarbage|
  blockofgarbage.each do |garbagespecific,names|
     names.each do |pigeon_name|
        if newHash[pigeon_name] == nil
          newHash[pigeon_name] = {}
        end
        if newHash[pigeon_name][cgl] == nil
           newHash[pigeon_name][cgl] = []
        end
          newHash[pigeon_name][cgl].push(garbagespecific.to_s)

     end
  end
end
return newHash
end
