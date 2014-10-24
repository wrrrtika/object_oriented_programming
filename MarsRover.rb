class Rover
	attr_accessor :x, :y, :direction

	def initialize (x, y, direction)
		@x = x
		@y = y
		@direction = direction

	end

	def display
		puts "Rover is at #{@x}, #{@y}, facing #{@direction}."
	end

	def move
		if (@direction == "N") 
			@y += 1
		elsif (@direction == "S")
			@y -= 1
		elsif (@direction == "W")
			@x -= 1
		else (@direction == "E")
			@x += 1
		end
	end

	def turn_left
		if (@direction == "N")  
			@direction = "W"
		elsif (@direction == "W")  
			@direction = "S"
		elsif (@direction == "S") 
			@direction = "E"
		else (@direction == "E")
			@direction = "N"
		end
	end
	
	def turn_right
		if (@direction == "N")  
			@direction = "E"
		elsif (@direction == "E")  
			@direction = "S"
		elsif (@direction == "S") 
			@direction = "W"
		else (@direction == "W") 
			@direction = "N"
		end
	end


	def execute_instructions
		@instructions.each_char do |x|
			case x
			when "M"
				move
			when"L"
				turn_left
			when"R"
				turn_right
			end
		end
	end

	def read_instructions (instructions)
		@instructions = instructions
		execute_instructions
	
	end
end

puts "where is Curiousity (x, y, direction)?"
rover_position = gets.chomp.upcase

Curiousity = Rover.new(rover_position.split[0].to_i,rover_position.split[1].to_i,rover_position.split[2])
Curiousity.display

puts "Input instructions (M, L, R):"
	instructions = gets.chomp.upcase
Curiousity.read_instructions(instructions)
Curiousity.display

puts "where is Opportunity (x, y, direction)?"
rover_position = gets.chomp.upcase

Opportunity = Rover.new(rover_position.split[0].to_i,rover_position.split[1].to_i,rover_position.split[2])
Opportunity.display

puts "Input instructions (M, L, R):"
	instructions = gets.chomp.upcase
Opportunity.read_instructions(instructions)
Opportunity.display

# puts "Would you like to input more instructions? Y/N"
# 	if Y