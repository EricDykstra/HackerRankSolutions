file = File.open("sort1.txt", "rb")
contents = file.read
array = contents.split[1..-1].map(&:to_i)
ins = array[-1]
pos = array.length
until ins > array[pos-1] && ins < array[pos+1] || pos == 0
  puts array.join(" ") if array[-1] != ins
  pos -= 1
  array[pos] = array[pos - 1]
end
array[pos] = ins
puts array.join(" ")