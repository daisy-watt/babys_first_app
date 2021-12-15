require "json"

# Read the file from disk into a string.
structure_file_string = File.read('./checker_structure.json')
# Convert the JSON string into a ruby hash.
structure_hash = JSON.parse(structure_file_string)
# Get user input.
puts "Please tell me your name"
name = gets.chomp.downcase

# For each letter in the message string
index = 0
while index < name.length
    # Get a single character from the message string
    character_in_name = name[index]  
    # Convert character to weave structure
    converted_character = structure_hash[character_in_name]
    # Print out weave structure for chatacter
    puts converted_character
    # Move to next character
    index = index + 1
end