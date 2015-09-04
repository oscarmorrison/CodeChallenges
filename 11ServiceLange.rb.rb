#!/usr/bin/ruby
n,t = gets.split(" ").map {|n| n.to_i}
service_lane = gets.split(" ").map {|n| n.to_i}
t.times do 
	i,j = gets.chomp.split(" ").map {|n| n.to_i}
	puts min = service_lane[i..j].min
end
