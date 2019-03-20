require_relative 'game'

print 'Please entry the number of games you wanna play: '

char = gets.delete("\n")
numb = char.to_i

if char == '0'
  puts 'Please, enter a number bigger than "0".'
elsif char == 'buceta'
  puts 'Sorry, but "' + char + '" is not a number, but a excelent choice! :p'
elsif numb > 0
  game = Game.new
  game.show(numb)
else
  puts 'Sorry, but "' + char + '" is not a number.'
end
