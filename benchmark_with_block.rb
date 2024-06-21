def benchmark
  # Your benchmarking code goes here.
  start_time = Time.now # Time.now returns the current time as a Time object.
  yield # yield will run the block that is passed into the method.
  end_time = Time.now # Time.now returns the current time as a Time object.
  end_time - start_time # We can subtract one Time object from another to get the difference between them in seconds.
end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"

#reverse is a method that is available on strings in Ruby. It returns a new string with the characters in reverse order.

# The benchmark method takes a block and runs it. It then returns the number of seconds that the block took to run. We can use this to measure how long a block of code takes to run. And the block is the code that is passed into the method. In this case, the block is long_string.reverse.