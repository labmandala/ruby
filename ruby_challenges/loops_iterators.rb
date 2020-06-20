## option 1: while loop

#puts “Are you annoyed with me yet? Please answer Y/N:”
#answer = gets.chomp.downcase

#while (answer == “n”)
#	puts “Are you annoyed with me yet? Please answer Y/N:”
#    answer = gets.chomp.downcase
#end


## option 2: iterate a dynamic loop
## psuedocode: while the number of tweets is less than the total number of tweets,
## I will keep going

all_tweets = [
	“My first tweet“,
	“My second tweet”,
	“My third tweet”,
	“I have the world’s most boring tweets”
]

total_number_of_tweets = all_tweets.size
i = 0
while (i <= total_number_of_tweets)
	puts all_tweets[i]
	i += 1
end
