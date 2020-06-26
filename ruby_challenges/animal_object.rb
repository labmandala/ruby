# ruby script for object class

# begin with 'class' keyword followed by capital class name
# instantiate your new class using .new after the class name, and assign it to a variable
class Cat
# use methods, including getters and setters, to define the characteristics members of your class will have
        def set_name=(cat_name)
            # variables should be instance variables
            @name = cat_name
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
            return "purrrrrrrfect"
        end
    
    end 
    
    my_cat= Cat.new
    my_cat.set_name= "Renoir"
    cat_name = my_cat.get_name
    puts "#{cat_name} says #{my_cat.squeal}."