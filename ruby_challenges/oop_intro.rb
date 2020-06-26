# intro to object oriented programming

# capitalize name of class, when you define an object class you always capitalize title
# because objects are constants
class Ferret
# method with setter
    def set_name=(ferret_name)
        # @ means instance variable
        @name = ferret_name
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

    def squeal
        return "squeeeeek"
    end

end 

my_ferret = Ferret.new
my_ferret.set_name= “Fredo”
ferret_name = my_ferret.get_name
puts “#{ferretname} says #{my_ferret.squeal}.”