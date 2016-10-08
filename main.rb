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

puts "-------------- 9 ----------------"
class Language
    def initialize (name, creator)
        @name = name
        @creator = creator
    end
    
    def setName (name)
        @name = name
    end
    
    def setCreator (creator)
        @creator = creator
    end
    
    def getName 
        return @name
    end
    
    def getCreator 
        return @creator
    end
    
    def description 
        puts "I'm #{@name} and I was created by #{@creator}!"
    end
end

object = Language.new("Kijja","Windows")
object.description
puts "Change >>>>>>>"
object.setName("JAJA")
object.setCreator("Ruby")
name = object.getName
puts "My name is "+name
creator = object.getCreator
puts "Created by "+creator
puts "---------------------------------"

puts "-------------- 10 ----------------"
class Circle
    @@PI = 3.14159
    
    def initialize (r)
        @radius = r
    end
    
    def setRadius (r)
        @radius = r
    end
    
    def getRadius 
        return @radius
    end
    
    def getArea 
        return @@PI * (@radius)**2
    end
    
    def getCircumference 
        return 2 * @@PI * @radius
    end
end

circle = Circle.new(10)
puts "Area is " + circle.getArea.to_s
puts "Diameter is " + circle.getRadius.to_s
puts "Circumference is " + circle.getCircumference.to_s
puts "---------------------------------"
