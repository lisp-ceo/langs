class PowerOfTwo
  attr_reader :value
  def initialize( value )
    @value = value
  end
  # Client method of Enumerable interface - <=>
  def <=>( other )
    @value <=> other.value
  end
  # Client method of Enumerable interface - succ
  def succ
    PowerOfTwo.new( @value + @value )
  end
  def to_s
    @value.to_s
  end
end

p1 = PowerOfTwo.new( 4 )
p2 = PowerOfTwo.new( 32 )

puts (p1..p2).to_a 

# output
# 4
# 8
# 16
# 32
