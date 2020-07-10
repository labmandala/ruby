# Refactor previous animals script using attribute accessors, alternate version

class Pet
    # instead of attr_writer as setters
    # instead of attr_reader as getters, just use attr_accessor for both
    # then add symbols
	attr_accessor :name, :species, :owner_name
end

class Ferret < Pet

    def squeal
        return "squeeeeee"
    end

end

class Chincilla < Pet

    def squeak
        return "eeeep"
    end
end

class Parrot < Pet

    def tweet
        return "chirp"
    end
end

my_ferret = Ferret.new 
my_ferret.name = "Fredo"
ferret_name = my_ferret.name

my_parrot = Parrot.new
my_parrot.name= "Budgie"
parrot_name = my_parrot.name

my_chincilla = Chincilla.new  
my_chincilla.name= "Dali"
chincilla_name = my_chincilla.name

puts "#{ferret_name} says #{my_ferret.squeal}, 
#{parrot_name} says #{my_parrot.tweet}, 
and #{chincilla_name} says #{my_chincilla.squeak}."

puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect