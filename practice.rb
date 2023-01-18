def findLeastNumOfUniqueInts(arr, k)
  count = arr.each_with_object(Hash.new(0)) { |x, hsh| hsh[x] += 1 }
  count = count.sort_by { |_, v| v }
  remove = 0
  count.each do |_, v|
    remove += v
    if remove > k
      return count.length - (remove - v)
    end
  end
  0
end
