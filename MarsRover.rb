

# puts "Enter your rover instructions:"
# roverinput = gets.chomp


class Rover
	attr_accessor :x, :y, :direction 

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def read(instruction)
		if instruction == "M"
			move
		elsif instruction == "L"
			turnleft
		elsif instruction == "R"
			turnright
		else 
			puts "Please input a valid instruction."
	end
	end
	def move 
		if @direction == "N"
			@y += 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "W"
			@x -= 1 
		elsif @direction == "E"
			@x +=1 
		else
			puts "please enter a valid location"
	end

	end

	def turnleft
		if @direction == "N"
			@direction = "W"
		elsif @direction== "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "E"
			@direction = "N"
		else
			puts "Please enter a valid direction"
		end

	end

	def turnright
		if @direction == "N"
			@direction = "E"
		elsif @direction== "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "W"
			@direction = "N"
		else
			puts "Please enter a valid direction"
		
		end
	end


	
	

end

rover = Rover.new(0,0,"N")

rover.read("R")


puts "Rover's current location is #{rover.x}, #{rover.y}, facing #{rover.direction}"
