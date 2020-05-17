def nyc_pigeon_organizer(data)
  birdNames = []
  birdHash = {}
  tempValues = []
  
  data.each do |val0, val1, val2|
    data[val0].collect do |val1, val2|
      birdNames << val2
    end
  end
  
  birdNames.flatten!.uniq!
  birdHash = Hash[birdNames.collect {|item| [item, {}]}]
  
  i = 0
  
  while i < birdNames.length do
    data.each do |val0, val1, val2|
      data[val0].each do |val1, val2|
        if data[val0][val1].include?(birdNames[i])
          tempValues << val1.to_s
        end
      end
      birdHash[birdNames[i]][val0] = tempValues
      tempValues = []
    end
    i += 1
  end
  birdHash
end
