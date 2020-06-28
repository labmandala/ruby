# ruby script for object class

# begin with 'class' keyword followed by capital class name
# when you define an object class, always capitalize title because objects are constants
# instantiate your new class using .new after the class name, and assign it to a variable
class Cat
# use methods, including getters and setters, to define the characteristics members of your class will have
# create methos to make sure all cats have names
# here: et_name=(cat_name) is the convention used in Ruby for setters
        def set_name=(cat_name)
            # variables should be instance variables, using @ symbol
            # variable belongs to a specific instance of this object
            @name = cat_name
        end
        # create get_name method to be able to ask what a cat's name is & returns the @name of cat
        def get_name
            return @name
        end
        # do the same thing for owner; set the owner and then create a way to get the name of the owner
        def set_owner=(owner_name)
            @owner_name = owner_name
        end
    
        def get_owner
            return @owner_name
        end
        # create method squeal which only exists for the cat class
        def squeal
            return "purrrrrrrfect"
        end
    
    end 
    # create first cat
    # creates a new instance of the cat class & saves the new cat object to a variable called my_cat
    my_cat= Cat.new
    my_cat.set_name= "Renoir"
    # in this instance get_name method is a getter
    cat_name = my_cat.get_name
    puts "#{cat_name} says #{my_cat.squeal}."

    # inspect object
    puts my_cat.inspect