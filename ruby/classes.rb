# String print method: to_s
class BookInStock
  def initialize( isbn, price )
    @isbn = isbn
    @price = Float( price )
  end
  def to_s
    "ISBN #{@isbn}, price: #{@price}"
  end
end

# readable atttributes - public variable accessors, long way
class BookInStock

  attr_reader :isbn, :price

  def initialize( isbn, price )
    @isbn = isbn
    @price = Float( price )
  end
  def to_s
    "ISBN #{@isbn}, price: #{@price}"
  end
end

# readable atttributes - public variable accessors, short way
class BookInStock

  attr_reader :isbn :price

  def initialize( isbn, price )
    @isbn = isbn
    @price = Float( price )
  end
  def to_s
    "ISBN #{@isbn}, price: #{@price}"
  end
end

# writable atttributes - public variable accessors, long way
class BookInStock

  def initialize( isbn, price )
    @isbn = isbn
    @price = Float( price )
  end
  def to_s
    "ISBN #{@isbn}, price: #{@price}"
  end
  def price = ( new_price )
    @price = new_price
  end
  def isbn = ( new_isbn )
    @isbn = new_isbn
  end
end

# writable attributes - public variable accessor, short way
class BookInStock
  
  attr_accessor :isbn
  attr_writer :price

  def initialize( isbn, price )
    @isbn = isbn
    @price = Float( price )
  end
  def to_s
    "ISBN #{@isbn}, price: #{@price}"
  end
end

# Virtual (emulated, faked ) attributes
# Here, there is no price in cents attribute but it is Virtualized through 2 methods
# price_in_cents returns the instance variable price
# when called as function on a reciever, it sets the internal price instance variable
class BookInStock
  
  attr_accessor :isbn
  attr_writer :price

  def initialize( isbn, price )
    @isbn = isbn
    @price = Float( price )
  end
  def to_s
    "ISBN #{@isbn}, price: #{@price}"
  end
  def price_in_cents
    return @price*100
  end
  def price_in_cents=(new_price)
    @price = new_price / 100
  end
end
