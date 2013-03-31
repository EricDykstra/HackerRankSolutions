file = File.open("billboard.txt", "rb")
contents = file.read
array = contents.split.map(&:to_i)
limit_together = array[1]
billboards = array[2..-1]

10.times do |x|
array_of_combinations = []
billboards.each_with_index do |x, i|
  next if billboards[i+limit_together-1].nil?
  group_combination = 0
  0.upto(limit_together-1) do |rel_i|
     group_combination += billboards[i+rel_i]
  end
  array_of_combinations << group_combination
end
10.times do
  array_of_combinations.each_with_index do |x,i|
    next if i < 1 || i > array_of_combinations.length-2
    if  x < array_of_combinations[i+1] || x < array_of_combinations[i-1]
      billboards[i] = 0
    end
  end
end
p array_of_combinations
p billboards
end


# hash = {}
# 0.upto(array_of_combinations.length-1) do |x|
#   hash.merge!({array_of_combinations[x] => x})
# end
# hash.each.with_index do |x, i|
#   i
# end