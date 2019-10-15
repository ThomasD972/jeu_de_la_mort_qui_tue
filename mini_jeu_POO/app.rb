require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'





player1 = Player.new ("troll")
player2 = Player.new ("lutine")

puts "Voici les warriors de l'espace"
puts player1.show_state
puts player2.show_state

puts "---------FIGHT--------"

puts "Place a la baston !! "

while player1.life_point > 0 && player2.life_point > 0 do 
	puts player1.show_state
	puts player2.show_state 

	puts"   "
	player2.attacks(player1)
	if player1.life_point < 0 || player2.life_point < 0 
		break 
	end

	player1.attacks(player2) 

	puts "  "

	puts "-----TILL YOU DIE-------"
	
end
