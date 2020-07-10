# Ruby script to create a hash using symbols

# rewrite from :creative => "design",...
interests = {creative: "design", nature: "hiking", spiritual: "meditate"}

puts "#{interests.inspect}"

puts "The elements of #{interests[:creative]} and #{interests[:nature]} express energies. Afterwards, #{interests[:spiritual]} to relax."