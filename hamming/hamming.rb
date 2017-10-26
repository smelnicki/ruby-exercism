class Hamming 
  def self.compute(sequence_one, sequence_two)
    raise ArgumentError if sequence_one.size != sequence_two.size

    [sequence_one.chars, sequence_two.chars].transpose.count { |x, y| x != y }
  end
end 

module BookKeeping
  VERSION = 3.freeze
end   
