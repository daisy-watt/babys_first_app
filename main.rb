require "json"
require "paint"

# Read the file from disk into a string.
structure_file_string = File.read('./checker_structure.json')
# Convert the JSON string into a ruby hash.
structure_hash = JSON.parse(structure_file_string)
# Get user input.
puts "Please tell me your name"
name = gets.chomp.downcase

puts "Compose your weave by assigning the RGB values of the Warp and Weft"

puts "Assign your Warp's Red color by choosing a value between 0-255"
warp_color_R = gets.chomp.to_i
puts "Assign your Warp's Green color by choosing a value between 0-255"
warp_color_G = gets.chomp.to_i
puts "Assign your Warp's Blue color by choosing a value between 0-255"
warp_color_B = gets.chomp.to_i

puts "Assign your Weft's Red color by choosing a value between 0-255"
weft_color_R = gets.chomp.to_i
puts "Assign your Weft's Green color by choosing a value between 0-255"
weft_color_G = gets.chomp.to_i
puts "Assign your Weft's Blue color by choosing a value between 0-255"
weft_color_B = gets.chomp.to_i

# For each letter in the message string
index = 0
while index < name.length
    # Get a single character from the message string
    character_in_name = name[index]  
    # Convert character to weave structure
    converted_character = structure_hash[character_in_name]
    # Print out weave structure for chatacter
    puts Paint[converted_character, [warp_color_R, warp_color_G, warp_color_B], [weft_color_R, weft_color_G, weft_color_B]] 
    # puts converted_character.colorize(:background => warp_colour, :color => weft_colour)
    # Move to next character
    index = index + 1
end