puts "Hello World!"
puts "Hello Again"
puts "I like typing this."
puts "This is fun."
puts "Yay! Printing."
puts "I'd much rather you 'not'"
puts 'I "said" do not touch this.'
# this is a comment
print "This line contains new line." + "\n"
p 1,2,3

class P
  def inspect(); "p#inspect" end
  def to_s(); "p#to_s" end
end

q = P.new
p q #to_inspect with newline
print q #to_s without new line
puts q #to_s withnew line

# Questions to revisit
# Make your script print only one of the lines.