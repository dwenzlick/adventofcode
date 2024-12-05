require_relative "day01"

list1 = []
list2 = []
File.readlines('input.txt', chomp: true).each do |line|
  i1, i2 = line.split(' ')
  list1 << i1.to_i
  list2 << i2.to_i
end

day01 = Day01.new(list1, list2)
sum = day01.calculate_difference
score = day01.calculate_similarity_score
puts "Difference is #{sum}"
puts "Similarity score is #{score}"