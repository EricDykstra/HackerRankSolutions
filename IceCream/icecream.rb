file = File.open("icecream.txt", "rb")
contents = file.read
array = contents.split("\n")
array.shift

def find_icecreams(icecreams,x,cash,i)
  return nil if not x < cash
  if icecreams.include?(cash-x)
    reverse = icecreams.reverse
    index = (reverse.length - reverse.index(cash-x))
    return "#{i+1} #{index}"
  end
end

def define_icecreams(x)
  cash = x[0].to_i
  icecreams = x[2].split.map(&:to_i)
  icecreams.each.with_index do |x,i|
    right = find_icecreams(icecreams,x,cash,i)
    return right if not right == nil
  end
end

array.each_slice(3) do |x|
  answer = define_icecreams(x)
  puts answer if not answer == nil
end
