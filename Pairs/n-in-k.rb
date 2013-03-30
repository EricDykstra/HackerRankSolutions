file = File.open("n-in-k.txt", "rb")
contents = file.read
x = contents.split.map(&:to_i)
numbers = x[2..-1].sort
diff = x[1].to_i
count = 0
numbers.each_with_index do |x, i|
  1.upto(diff) do |num|
    next if numbers[i+num] == nil
    if numbers[i+num] - x == diff
      count +=1 
      next
    end
  end
end
p count

# file = STDIN.readlines
# contents = file.join(" ")