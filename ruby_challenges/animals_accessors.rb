# Refactor previous refactored script to use attribute accessors

class Pet
	attr_accessor :name, :species, :owner_name

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

my_ferret = Pet.new 
my_ferret.species = "Ferret"
my_ferret.name = "Fredo"
ferret_name = my_ferret.name

my_parrot = Pet.new
my_parrot.species = "Parrot" 
my_parrot.name= "Budgie"
parrot_name = my_parrot.name

my_chincilla = Pet.new 
my_chincilla.species = "Chincilla" 
my_chincilla.name= "Dali"
chincilla_name = my_chincilla.name

# change to use new pet_says method to return what each pet is going to say 
puts "#{ferret_name} says #{my_ferret.pet_says}, 
#{parrot_name} says #{my_parrot.pet_says}, 
and #{chincilla_name} says #{my_chincilla.pet_says}."

puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect