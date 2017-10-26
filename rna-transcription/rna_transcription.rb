class Complement
  DNA = 'ACGT'.freeze
  RNA = 'UGCA'.freeze 
  
  def self.of_dna(strand)
    return '' unless is_dna?(strand)
    strand.tr(DNA, RNA)
  end

  private
  def self.is_dna?(strand)
    strand.chars.all? { |c| DNA.include?(c) }
  end
end

module BookKeeping
  VERSION = 4.freeze
end 
