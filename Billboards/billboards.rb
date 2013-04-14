file = File.open("billboard.txt", "rb")
contents = file.read
array = contents.split.map(&:to_i)
limit_together = array[1]
billboards = array[2..-1]

# array_of_combinations = []
# billboards.each_with_index do |x, i|
#   next if billboards[i+limit_together-1].nil?
#   group_combination = 0
#   0.upto(limit_together-1) do |rel_i|
#      group_combination += billboards[i+rel_i]
#   end
#   array_of_combinations << group_combination
# end

billboards.each_with_index do |x, i|
  next if billboards[i-limit_together].nil? || billboards[i+limit_together].nil?
  if billboards[i-1] > billboards[i+1] && x > billboards[i+1]
    billboards[i+1] = 0
  elsif billboards[i+1] > billboards[i-1] && x > billboards[i-1]
    billboards[i-1] = 0
  end
end

# p array_of_combinations
# p billboards
p billboards.inject(:+)
p 1104