#!/usr/bin/env ruby

require('./lib/coin.rb')

puts `clear`
puts "How much change do you have in your pocket (in cents)?"
cents = gets.chomp.to_i
while !(cents > 0)
  puts 'That is not a positive number, please enter your change:'
  cents = gets.chomp.to_i
end
puts `clear`
puts "The breakdown for #{cents}¢ is:"
counter = Counter.new()
puts counter.get_change(cents)
puts "Press Enter to exit."
gets
puts `clear`
