#Class Exercise
class Person
	attr_accessor :name

def initialize(name)
	@name = name
end

def greeting
	puts "Hey, my name is #{@name}"
end

end


class Student < Person	
	def learn
		puts "I get it!"
	end
end



class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
end


end

student = Student.new("Christina.")
instructor = Instructor.new("Chris.")

puts student.greeting 
puts instructor.greeting


puts instructor.teach
puts student.learn


#puts.student.teach <---- can't do. multi-inheritance and whatnot doesn't work



