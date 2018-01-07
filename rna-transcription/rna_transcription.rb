class String
  def dna?
    self.chars.all? { |c| 'ACGT'.include?(c) }
  end 
end 

module Complement
  DNA = 'ACGT'.freeze
  RNA = 'UGCA'.freeze

  def self.of_dna(strand)
    return '' unless strand.dna?
    strand.tr(DNA, RNA)
  end
end

module BookKeeping
  VERSION = 4.freeze
end
