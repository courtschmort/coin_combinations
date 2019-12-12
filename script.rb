#!/usr/bin/env ruby

require('./lib/coin.rb')

puts "How much change do you have in your pocket (in cents)?"
cents = gets.chomp.to_i
counter = Counter.new()
puts counter.get_change(cents)
