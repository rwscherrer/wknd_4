# Find the needle by writing one line of code. 
# As an example, if haystack = [:hay, :needle, :hay], you'd pull it out with:
# haystack[1]

haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}

# puts haystack.flatten(2)[4].flatten[1].flatten(2).flatten[2].flatten(2)[3]

puts haystack.to_a[0][1].to_a[3].to_a[0][1].to_a[0][1][1].to_a[0][1][2].to_s






