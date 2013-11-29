# Code Blocks - chunks of code you can associated with method invocations almost as if they were params
# Code blocks are between braces or between do ... end statements

# 1
{ puts "Hello" }

# 2
do
  club.enroll( person )
  person.socialize
end

# 3 - parameterized
verbose_greet( "Dave", "loyal customer" ) { puts "Hi" }

# 4

def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts "In the block" }

# output
# Start of the method
# In the block
# In the block
# End of method

# 5 - yield can provide params to the code block between |
def who_says_what
  yield( "Dave", "hello" )
  yield( "Andy", "goodbye" )
end

who_says_what { |person, phrase| puts "#{ person } says #{ phrase }" }

# output
# Dave says hello
# Andy says goodbye

# 6 - Uses

animals = %w( dog cat wolf )
animals.each { | animal_name | puts "This is an #{animal_name}"
