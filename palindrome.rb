require 'pry'

def start
  puts "Give a word or frase or quit to exit"
  @answer = gets.strip
  exit if @answer == 'quit'
  magic
end

def magic
  @answer.split('')
  # @answer = @answer.delete(/(\,|\!|\?|\.)|d+/)
  if @answer.length % 2 == 0
    puts "No palindrome here"
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
    puts "It's a palindrome!!!"
  else
    puts "no palindrome here"
  end
end

while true
  start
end
