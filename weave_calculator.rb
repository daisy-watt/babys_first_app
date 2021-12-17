require "json"
require "tty-prompt"
require "paint"
require "colorize"

def choose_calculator_function
    prompt = TTY::Prompt.new
    choice = prompt.select("chose what you need calculating", %w(epi_calculator total_ends_calculator sley_sequence_calculator))
    puts choice 
    # choice = gets.chomp.to_i
    if choice == "epi_calculator"
        puts "How many times did your string wrap around an inch?"
        wraps_per_inch = gets.chomp.to_i
        epi = epi_calculator(wraps_per_inch)
        puts "Your Ends Per Inch total is #{epi}".green
    elsif choice == "total_ends_calculator"
        total_ends_calculator
    elsif choice == "sley_sequence_calculator"
        sley_sequence_calculator
    end
end


def epi_calculator(wraps_per_inch) 
    return (wraps_per_inch / 3) * 2
    # def epi_sum(a)
    #     return (a / 3) * 2  
    # end
    # epi = epi_sum(wraps_per_inch) 
end

def total_ends_calculator
    puts "What was your total Ends Per Inch?"
    epi = gets.chomp.to_i 
    # a = epi

    puts "Enter in your desired warp width in inches"
    warp_width = gets.chomp.to_i 
    # b = warp_width

    def total_ends_sum(a,b)
        a * b 
    end

    total_ends = total_ends_sum(epi,warp_width) 
    puts "Your total number of ends are #{total_ends}".green
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
    # epi_chart = JSON.parse(File.read('./epi_chart.json'))
    # selction = gets.chomp
    puts "Enter the size of reed you wish to use"
    reed = gets.chomp
    puts "Enter in your Ends Per Inch to find your slay sequence"
    epi_size = gets.chomp
    sley_sequence = epi_chart[reed][epi_size]
    puts "Your sley sequence is #{sley_sequence}".green
end