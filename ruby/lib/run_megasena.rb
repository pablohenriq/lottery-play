require_relative 'megasena'

print 'How many games you wanna play? '

char = gets.delete("\n")
numb = char.to_i

if char == '0'
  puts 'Please, enter a number bigger than "0".'
elsif %w[buceta xoxota priquito].include?(char.downcase)
  puts 'Sorry, "' + char + '" is not a number, but is a excelent choice! :p'
elsif numb > 0
  game = MegaSena.new
  game.show(numb)
else
  puts 'Sorry, but "' + char + '" is not a number.'
end