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
