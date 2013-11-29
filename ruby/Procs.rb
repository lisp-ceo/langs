# If the last param in a method definition is prefixed with an ampersand, any associated block is converted to a Proc object

class TaxCalculator
  def initialize( name, &block )
    @name, @block = name, block
  end
  def get_tax( amount )
    "#@name on #{ amount } = #{ @block.call( ammount ) }"
  end
end

tc = TaxCalculator.new( "Sales Tax" ) { |amt| amt * 0.075 }

tc.get_tax( 100 )
tc.get_tax( 250 )

# Proc objects are explicitly associated with functions as follows

print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer( gets )
if operator =~ /^t/
  calc = lambda { |n| n * number }
else
  calc = lambda { |n| n + number }
end
puts( ( 1..10 ).collect( &calc ).join( ", " ))
