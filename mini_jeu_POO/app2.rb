require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
  



  puts "------------------------"
  puts "Bienvenue dans le jeu de la mort qui tue"
  puts "Il n'en restera qu'un !  "
  puts "------------------------"

  puts "Quel est ton nom valeureux combattant ?"
  pseudo = gets.chomp
  
  player1 = HumanPlayer.new("#{pseudo}")

  enemie1 = Player.new ("troll")
  enemie2 = Player.new ("lutine")

  puts "Voici tes adversaires"
  
  puts enemie1.show_state
  puts enemie2.show_state

   enemies = [enemie1, enemie2]

   puts "  "

  while player1.life_point > 0 && (enemie1.life_point > 0 || enemie2.life_point > 0) do 

puts "------------"

	puts "Que veux tu faire ? "
  puts"  "
	puts "a -- chercher une meilleure arme"
	puts "s -- chercher a se soigner"
  puts "Ton etat #{player1.show_state}"
  puts "   "
  puts " attaquer un joueur en vue  "
  puts  "1 -- #{enemie1.show_state} "
  puts  "0 -- #{enemie2.show_state} "

    action = gets.chomp # les actions de l'utilisateur attaque ou amelioration
    if action == "a" 
    	player1.search_weapon
    
    elsif action == "s" 
    	player1.search_health_pack
    
    elsif action == "1"
          player1.attacks(enemie1)
          
    
    elsif action == "0"
      player1.attacks(enemie2)
    end

    puts "-------"
    puts "La risposte des enemies"

    

    enemies.each do |enemy| #risposte des ennemis 
      if enemy.life_point > 0 
      enemy.attacks(player1)
      end
      end
      
      puts "     "
        
    end

    puts "******************************"
      
    puts" KING OF THE WORLD "
    puts "TU as gagne la partie"
    puts"********************************"
    


      
    
   	
	
	

