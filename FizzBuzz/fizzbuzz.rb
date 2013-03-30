1.upto(100){|x|puts x%3==0&&x%5==0?'FizzBuzz':x%3==0?'Fizz':x%5==0?'Buzz':x}
# puts (1..100).map{|x|(x%3!=0&&x%5!=0?x:x%3==0&&x%5==0?'FizzBuzz':x%3==0?'Fizz':'Buzz')}