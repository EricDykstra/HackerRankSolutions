file = File.open("l.txt", "rb")
contents = file.read
array = contents.split.map(&:to_i)[1..-1]
array.each { |x| 
  y=Rational(1)
  1.upto(x) { |i|
    i%2==0 ? y+=Rational(1,i*2+1) : y-=Rational(1,i*2+1)
  }
  p y.to_f
}
# n = gets.to_i
p 0.760459904732351
p 0.772905951666960