line = gets
# use of match operator ( =~ ) as coniditonal
# returns index of first match or nil
if line =~ /Perl|Python/
  puts "Scripting language mentioned: #{line}"
end
