# a word on style from object orientation

## first example code works, but uses vague random variable names:
#def hi(n, t)
#    t == "morning" : "Good morning #{n}" ? "Hi, #{n}"
#end

# next example does exact same thing, rewritten with clearer variables:
def greet(name, time_of_day)
    if time_of_day == "morning"
        "Good morning, #{name}"
    else
        "Hi, #{name}"
    end
end
