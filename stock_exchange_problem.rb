def rate_in(pair)
  pair[1]
end

def time_of(pair)
  pair[0]
end


rates = [[0,1], [1,3], [2,5], [3,7], [4, 0.5], [5, 9]]

min_rate_pair = rates[0]
max_rate_pair = rates[1]
probable_min_pair = min_rate_pair


rates.each_with_index do |pair, index|
  previous_pair = pair
  next_pair = pair
  if rate_in(next_pair) < rate_in(min_rate_pair)
    print "next_pair"
    puts next_pair.to_s
    probable_min_pair = next_pair
  elsif rate_in(next_pair) > rate_in(max_rate_pair)
    max_rate_pair = next_pair
    min_rate_pair = probable_min_pair
  end
end

puts min_rate_pair.to_s
puts max_rate_pair.to_s