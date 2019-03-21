def menu
  puts "Quer jogar o que Rogerinho? \n
  [1] Mega-sena   [2] Quina   [3] Lotomania  [0] Exit \n\n"
  print 'Digite aqui a sua escolha: '
end

menu

game_chosen = gets.chomp

while game_chosen != '0'
  system('clear')

  case game_chosen
  when '1'
    puts "\nMEGA-SENA"
    load 'ruby/lib/run_megasena.rb'

  when '2'
    puts "\nQUINA"
    load 'ruby/lib/run_quina.rb'

  when '3'
    puts "\nLOTOFACIL"
    load 'ruby/lib/run_lotofacil.rb'

  else
    "\nNenhuma escolha possível para: #{game_chosen}"
  end

  menu
  game_chosen = gets.chomp
end
