# Bingo Card project in Ruby

# Build Bingo Card
bingo_card = <<-BINGO
+---+---+---+---+---+
| B | I | N | G | O |
+---+---+---+---+---+
|   |   |   |   |   |
+---+---+---+---+---+
|   |   |   |   |   |
+---+---+---+---+---+
|   |   | F |   |   |
+---+---+---+---+---+
|   |   |   |   |   |
+---+---+---+---+---+
|   |   |   |   |   |
+---+---+---+---+---+
BINGO
 
puts bingo_card

# convert a range into an array, using the .to_a method
# get random elements from an array using .sample method
# which in turn takes an optional argument for the amount of elements we want to retrieve

b_col = (1..15).to_a.sample(5)
i_col = (16..30).to_a.sample(5)
n_col = (31..45).to_a.sample(4)
g_col = (46..60).to_a.sample(5)
o_col = (61..75).to_a.sample(5)

 
puts b_col.inspect
puts i_col.inspect
puts n_col.inspect
puts g_col.inspect
puts o_col.inspect

