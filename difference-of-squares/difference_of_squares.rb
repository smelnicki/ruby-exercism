class Squares
  attr_reader :range

  def initialize(range)
    @range = range
  end

  def square_of_sum
    (0..@range).sum ** 2
  end

  def sum_of_squares
    (0..@range).sum { |x| x ** 2 } 
  end

  def difference
    square_of_sum - sum_of_squares 
  end 
end 

module BookKeeping
  VERSION = 4.freeze
end 
