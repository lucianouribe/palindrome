require 'pry'
require 'colorize'

def start
  puts """
========================================
||      THE WEIRD PALINDROME TEASER   ||
========================================

 _____
/     \\
vvvvvvv  /|__/|
   I   /O,O   |
   I /_____   |      /|/|
  J|/^ ^ ^ \\  |    /00  |    _//|
   |^ ^ ^ ^ |W|   |/^^\\ |   /oo |
    \\m___m__|_|    \\m_m_|   \\mm_|


  """.colorize(:yellow)
  puts "Give a word or frase or type 'quit' to exit".colorize(:green)
  print ">> ".colorize(:red)
  @answer = gets.strip
  exit if @answer == 'quit'
  magic
end

def magic
  @answer.split('')
  # @answer = @answer.delete(/(\,|\!|\?|\.)|d+/)
  if @answer.length % 2 == 0
    puts "No palindrome here!!".colorize(:red)
  else
    reverse
  end
end

def reverse
  @new_answer = []
  @answer.split()
  @new_answer << @answer
  @new_answer.sort! { |x,y| y <=> x}
  @super_new = @new_answer.join
  messages
end

def messages
  if @super_new == @answer
    puts "It's a palindrome!!!".colorize(:blue)
  else
    puts "No palindrome here!!".colorize(:red)
  end
end

while true
  start
end
