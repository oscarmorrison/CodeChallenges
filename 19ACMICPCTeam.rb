#!/usr/bin/ruby

#given a list of N people attending an ACM-ICPC World Finals. Each of them 
#are either well versed in a top or they are not. Find out the maximum number of topics a 2-person team can know. And also find out how many teams can know that maximum number of topics.

#Suppose a,b, and c are three different people, then (a,b) and(b,c) are counted as two different teams

#N = number of people
#M = number of topics

def binary_or(num_sting_a, num_sting_b)
	return (num_sting_a.to_i(2)|num_sting_b.to_i(2)).to_s(2)
end

def team_and_topic_count(n,array)
	results = []
	for i in (0...n-1)
		for j in (i+1..n-1)
			results<<binary_or(array[i],array[j]).count("1")
		end
	end
	max_topics = results.max
	team_max_count = results.count(max_topics)
	puts max_topics
	puts team_max_count
end

n,m = gets.chomp.split(" ").map{|n| n.to_i}
array = []
n.times do
	line = gets.chomp
	array<<line
end

team_and_topic_count(n,array)