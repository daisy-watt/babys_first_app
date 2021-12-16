require 'json'
def sley_sequence

    epi_chart = JSON.parse(File.read('./epi_chart.json'))
    # selction = gets.chomp
    puts "Enter the size of reed you wish to use"
    reed = gets.chomp
    puts "Enter in your Ends Per Inch to find your slay sequence"
    epi_size = gets.chomp
    pp epi_chart[reed][epi_size]
end