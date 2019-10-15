class Player
	attr_accessor :name, :life_point



	def initialize (name)
		@name = name
		@life_point = 10
	end


	def show_state 
		return " #{name} a #{@life_point} de point de vie "
	end 


	def gets_damage (damage_received) #on determine les points de degat recu
		@life_point = @life_point - damage_received

		if @life_point <= 0 
			puts "#{name} est mort comme une grosse merde"
		end
		
	end


	def attacks (player)
		puts "Le joueur #{name} attaque le joueur #{player.name}"
		damage = compute_damage
		
		puts "Le joueur #{@name} lui inflige #{damage} de dommage"
		
		player.gets_damage (damage)

	end




	def compute_damage
		return rand(1..6)
	end

end 

class HumanPlayer < Player
	attr_accessor :weapon_level 


	def initialize (name)
		@name = name
		@life_point = 100
		@weapon_level = 1
	end

	def show_state
		return "#{name} a #{@life_point} et une arme de niveau #{@weapon_level}"
	end


	def compute_damage
		return rand(1..6)*@weapon_level
	end


	def search_weapon 
		level = rand(1..6)
		puts "Tu as trouve une arme de niveau #{level}"

		if level > @weapon_level  #si la l'arme est plus forte on la conserve
			puts "Plus puissante je la garde !!"
			@weapon_level = level 
		else 
			puts "Arme de merde, dommage"
		end 
	end


	def search_health_pack 
		heal = rand(1..6)
		
		

		 	if heal == 1 
		 	puts "Tu n'as rien trouve d'utile"
		 
			 elsif heal >= 2 && heal <=5
		 	puts "Tu as trouve 50 points de vie "
		 	@life_point += 50

		 		
		 	elsif  heal == 6 
		 	puts "Good job, tu as trouve 80 points de vie"
		 	@life_point += 80 
		 	 end
		 	 if @life_point > 100
		 	 	@life_point = 100 
		 	 else 
		 	 end 
	end
	 

end













	