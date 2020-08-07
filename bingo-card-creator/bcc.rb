# Bingo Card Creator project in Ruby

require "prawn"

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

# align headers based on number of digits
# by adding a leading space if it doesnt have two digits 
def align(num)
    if num < 10
        "  #{num}"
    else
        " #{num}"
  end
end
 
b_col = (1..15).to_a.sample(5)
i_col = (16..30).to_a.sample(5)
n_col = (31..45).to_a.sample(4)
g_col = (46..60).to_a.sample(5)
o_col = (61..75).to_a.sample(5)
 
bingo_card = <<-BINGO
+-----+-----+-----+-----+-----+
|  B  |  I  |  N  |  G  |  O  |
+-----+-----+-----+-----+-----+
| #{align(b_col[0])} | #{align(i_col[0])} | #{align(n_col[0])} | #{align(g_col[0])} | #{align(o_col[0])} |
+-----+-----+-----+-----+-----+
| #{align(b_col[1])} | #{align(i_col[1])} | #{align(n_col[1])} | #{align(g_col[1])} | #{align(o_col[1])} |
+-----+-----+-----+-----+-----+
| #{align(b_col[2])} | #{align(i_col[2])} |  F  | #{align(g_col[2])} | #{align(o_col[3])} |
+-----+-----+-----+-----+-----+
| #{align(b_col[3])} | #{align(i_col[3])} | #{align(n_col[2])} | #{align(g_col[3])} | #{align(o_col[3])} |
+-----+-----+-----+-----+-----+
| #{align(b_col[4])} | #{align(i_col[4])} | #{align(n_col[3])} | #{align(g_col[4])} | #{align(o_col[4])} |
+-----+-----+-----+-----+-----+
BINGO
 
puts bingo_card

puts b_col.inspect
puts i_col.inspect
puts n_col.inspect
puts g_col.inspect
puts o_col.inspect

# to access first box, instructions inside of do...end
#grid(0, 0).bounding_box do
#end

# add borders, style text, insert full header
Prawn::Document.generate("bingo.pdf") do
  define_grid(columns: 5, rows: 6)
 
  grid(0, 0).bounding_box do
    stroke_bounds
    text "B", align: :center, valign: :center, size: 50, style: :bold
  end
  grid(0, 1).bounding_box do
    stroke_bounds
    text "I", align: :center, valign: :center, size: 50, style: :bold
  end
  grid(0, 2).bounding_box do
    stroke_bounds
    text "N", align: :center, valign: :center, size: 50, style: :bold
  end
  grid(0, 3).bounding_box do
    stroke_bounds
    text "G", align: :center, valign: :center, size: 50, style: :bold
  end
  grid(0, 4).bounding_box do
    stroke_bounds
    text "O", align: :center, valign: :center, size: 50, style: :bold
  end
end