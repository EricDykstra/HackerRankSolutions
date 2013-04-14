file = File.open("flowers.txt", "rb")
contents = file.read
array = contents.split.map(&:to_i)
friends = array[1]
flowers = array[2..-1].sort.reverse
total = 0
flowers.each_with_index do |x,i|
  total += (x * ((i+3) / friends))
end
p total