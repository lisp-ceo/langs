(1..10).to_a
enum = %w( bar bat bog bum).to_enum
enum.next # => "bar"
enum.next # => "bat"
