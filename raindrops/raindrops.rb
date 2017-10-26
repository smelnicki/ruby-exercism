module Raindrops
  PLING = ['Pling', Proc.new { |x| x % 3 == 0 }]
  PLANG = ['Plang', Proc.new { |x| x % 5 == 0 }]
  PLONG = ['Plong', Proc.new { |x| x % 7 == 0 }]

  def self.convert(number)
    answer = [PLING, PLANG, PLONG].select { |_, predicate| predicate.call(number) }
    answer.size > 0 ? answer.map(&:first).join : number.to_s
  end
end 

module BookKeeping
  VERSION = 3.freeze
end 

