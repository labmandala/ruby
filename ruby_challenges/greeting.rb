# Advanced Method Techniques; improving methods

# create a stand-alone method that figures out time of day
# and that can be repurposed outside of greeting method(removed from inside greeting method)
def determine_current_hour
    current_time = Time.new
    current_hour = current_time.hour
end

def greeting(name)

    # call defined determine_current_hour method from inside this greeting method
    # save resulting value to current_hour variable
    # this runs the determine_current_hour method and passes data back to greeting method
    # Ruby automatically returns the last value in its method (current_hour)
    current_hour = determine_current_hour

    if(current_hour > 3 && current_hour < 12)
        time = "morning"
    elsif(current_hour > 12 && current_hour < 18)
        time = "afternoon"
    elsif(current_hour > 18 || current_hour < 2)
        time = "evening"
    end

    puts "Good #{time}, #{name.capitalize}!"
end

greeting("Sarah")