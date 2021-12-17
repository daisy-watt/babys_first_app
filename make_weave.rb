require "json"
require "paint"
require "colorize"
require "tty-prompt"
require "tty-editor"

prompt = TTY::Prompt.new

def make_weave

    begin
        #Read the file from disk into a string.
        structure_file_string = File.read('./checker_structure.json')   
    rescue => exception
        puts "Hey angel this file is missing."
        exit
    end


    # Convert the JSON string into a ruby hash.
    structure_hash = JSON.parse(structure_file_string)
    
    # Get user input.
    # -------------------what happens if someone enters in a symbol or number?
    puts "Enter your secret message below:"
    secret_message = gets.chomp.downcase

    # -------------------what happens if someone enters in something other than yes or no?
    puts "Would you like to choose your colors?"

    # color_choice = prompt.select("now, how would you like to color your weave? (Use ↑/↓ arrow keys, press Enter to select)", %w(let_the_matrix_decide imput_RGB_values))

    color_choice = gets.chomp
    puts "here is your woven encryption:"
    if color_choice == "no"

    else 
        puts "Compose your weave by assigning the RGB values of the Warp and Weft... (RGB = Red Green Blue)"
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
    end
    final_weave_output = "" 

    # For each letter in the message string
    index = 0
    while index < secret_message.length
        # Get a single character from the message string
        character_in_message = secret_message[index]  
        # Convert character to weave structure
        converted_character = structure_hash[character_in_message]

        final_weave_output << converted_character
        final_weave_output << "\n"

        # Print out weave structure for chatacter ----- OPTIONS FOR "EXPORTING" (ie jpg, tff, pdf)
        puts Paint[converted_character, [warp_color_R, warp_color_G, warp_color_B], [weft_color_R, weft_color_G, weft_color_B]] 
        # puts converted_character.colorize(:background => warp_colour, :color => weft_colour)
        # Move to next character
        index = index + 1
    end
    File.write("secret_weave.txt", final_weave_output)
    puts "open your secret weave file below"
    TTY::Editor.open("secret_weave.txt")
end


