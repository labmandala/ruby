# Refactor previous animals Ruby refactored script to be concise
# change ferret_name to pet_name to cover multiple items
# change the method name from squeal to pet_says 

class Pet

    def set_species=(species)
		@species = species
	end
	
	def get_species
		return @species
	end
	
	def set_name=(pet_name) 
		@name = pet_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
    end
    # add if statement to produce a noise depending on it's species
    def pet_says
    
        if @species == "Ferret"
            return "squeeeeee"
        elsif @species == "Chincilla"
            return "eeeep"
        elsif @species == "Parrot"
            return "chirp"
        else
            return "I've got nothing to say!"
        end
    end
         
end

# change class names below to new Pet class

my_ferret = Pet.new 
my_ferret.set_species = "Ferret"
my_ferret.set_name = "Fredo"
ferret_name = my_ferret.get_name

my_parrot = Pet.new
my_parrot.set_species = "Parrot" 
my_parrot.set_name= "Budgie"
parrot_name = my_parrot.get_name

my_chincilla = Pet.new 
my_chincilla.set_species = "Chincilla" 
my_chincilla.set_name= "Dali"
chincilla_name = my_chincilla.get_name

# change to use new pet_says method to return what each pet is going to say 
puts "#{ferret_name} says #{my_ferret.pet_says}, 
#{parrot_name} says #{my_parrot.pet_says}, 
and #{chincilla_name} says #{my_chincilla.pet_says}."

puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect