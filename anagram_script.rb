#!/usr/bin/ruby
require('./lib/anagram.rb')

puts
45.times{ print "-" }
puts
puts 'Hello human! Welcome to the Anagram Checker'
45.times{ print "-" }
puts

puts 'This program will take input from user and check if it is an anagram'

puts 'Please enter a word or sentence'
first_input = gets.chomp
puts

puts 'Please enter a second word or sentence'
second_input = gets.chomp
puts

user_input = Anagram.new(first_input, second_input)

if user_input.anagram? === 'These words are anagrams.' || user_input.anagram? === 'You need to input actual words.'
  puts user_input.anagram?
else
  puts user_input.antigram?
end