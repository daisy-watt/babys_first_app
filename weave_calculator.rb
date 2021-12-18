require "json"
require "tty-prompt"
require "paint"
require "colorize"

def choose_calculator_function
    prompt = TTY::Prompt.new
    choice = prompt.select("chose what you need calculating", %w(epi_calculator total_ends_calculator sley_sequence_calculator))
    puts choice 

    if choice == "epi_calculator"
        puts "How many times did your string wrap around an inch?"
        wraps_per_inch = gets.chomp.to_i
        epi = epi_calculator(wraps_per_inch)
        puts "Your Ends Per Inch total is #{epi}".green
    elsif choice == "total_ends_calculator"
        puts "What was your total Ends Per Inch?"
        ends_per_inch = gets.chomp.to_i 
        puts "Enter in your desired warp width in inches"
        warp_width = gets.chomp.to_i 
        total_ends = total_ends_calculator(ends_per_inch,warp_width) 
        puts "Your total number of ends are #{total_ends}".green
    elsif choice == "sley_sequence_calculator"
        sley_sequence_calculator
    end
end


def epi_calculator(wraps_per_inch) 
    return (wraps_per_inch / 3) * 2

end

def total_ends_calculator(ends_per_inch,warp_width)
    return ends_per_inch * warp_width 

end

def sley_sequence_calculator

    begin
        #Read the file from disk into a string.
        epi_chart = File.read('./epi_chart.json')   
    rescue => exception
        puts "Hey angel this file is missing."
        exit
    end
    
    begin
        # Convert the JSON string into a ruby hash.
        epi_chart_hash = JSON.parse(epi_chart) 
    rescue => exception
        puts "Hey angel this JSON file is broken :( "
        exit
    end

    puts "Enter the size of reed you wish to use"
    reed = gets.chomp
    puts "Enter in your Ends Per Inch to find your slay sequence"
    epi_size = gets.chomp
    sley_sequence = epi_chart[reed][epi_size]
    puts "Your sley sequence is #{sley_sequence}".green
end