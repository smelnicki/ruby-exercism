class Gigasecond
  @gigasecond = 10**9.freeze  

  def self.from(time)
     time + @gigasecond 
  end 
end

module BookKeeping 
  VERSION = 6.freeze
end 

