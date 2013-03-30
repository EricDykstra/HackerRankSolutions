file = File.open("n-in-k.txt", "rb")
contents = file.read
array = contents.split[1..-1]
p array