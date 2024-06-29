# This is the example program of how to get user input and then process it to the desired result
# Get all user input
# Sum all even number
# Print the result

puts "Please input your number: "
input = gets.chomp
if input == ""
    puts "your input is invalid"
    return
end

nums = input.split(" ").map(&:to_i)

total = 0
for i in nums
    next if i % 2 != 0
    total += i
end

puts total
