class Day01
  attr_accessor :first_list, :second_list
  
  def initialize(list1, list2)
    @first_list = list1.sort
    @second_list = list2.sort
  end

  def calculate_difference
    sum = 0
    first_list.each_with_index do |value, index|
      i = second_list[index]
      sum += (value - i).abs
    end
    sum
  end

  def calculate_similarity_score
    counts = {}
    second_list.each do |value|
      counts[value] ||= 0
      counts[value] += 1
    end

    sum = 0
    first_list.each do |value|
      i = counts[value] || 0
      sum += value * i
    end
    sum
  end
end
