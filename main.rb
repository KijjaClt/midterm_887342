puts "-------------- 1 ----------------"
    print "n = "
    n = gets.to_i
    if n >= 1
        arr1 = Array.new(n) {|i| (i+1)**3 }
        puts "Member of array is "+arr1.inspect
    else 
        puts "Input number less than 1"
    end
puts "---------------------------------"

puts "-------------- 4 ----------------"
    arr4 = Array.new(US_states)
    arr4.each {|value| puts value if value.length > 8}
puts "---------------------------------"

puts "-------------- 5 ----------------"
    arr5 = Array.new(US_states)
    arr5.each {|key,value| puts key if (['M','N','S'].include? key[0]) && (['a','e','i','o','u'].include? key[key.length-1])}
puts "---------------------------------"

puts "-------------- 7 ----------------"
    hash = Hash[*abbr_states.flatten]
    hash.each{|key,value| puts key+" "+value}
puts "---------------------------------"

puts "-------------- 8 ----------------"
    hash = Hash[*abbr_states.flatten]
    hash.each{|key,value| puts key+" "+value if key.casecmp(value[0..1]) == 0}
puts "---------------------------------"

