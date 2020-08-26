Gem::Specification.new do |s|
 
    # name of gem
    s.name        = 'greeter'
    
    # gem version
    s.version     = '0.0.1'
    
    # short, one-line description of what gem does
    s.summary     = 'It greets you!'
    
    # more in-depth about gem purpose
    s.description = 'This is a super simple greeter gem.'
    
    # insert creator(s) name into array
    s.authors     = ['Sarah']
    
    # "I love the creation!" - your future gem users
    s.email       = ['you@example.com']
    
    s.files       = ['lib/greeter.rb']
    
    # a link where users can find out more about gem
    s.homepage    = 'https://github.com/labmandala/ruby/tree/master/greeter'
    
    # be clear about how we want this gem to be used
    # we like free and open source software, & need to tell users this gem is open source
    # MIT is a good Open Source license
    s.license     = 'MIT'

    # append two lines for executable
    s.bindir      = 'exe'  
    s.executables << 'greeter'
    
end
