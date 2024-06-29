# This sandbox provides an example on how we achieve concurrency in ruby.
# In this sample cases, We want to simply sleep for a random second (1 - 3) and print number from 1 to 100

puts "Starting"
threads = []
(1..100).each do |num|
  threads << Thread.new do
    sleep(rand(3))
    puts "Hello this is the output of number #{num}"
  end
end

puts "All numbers dispatched"

threads.map(&:join) # Wait all threads to complete
puts "Complete!"
