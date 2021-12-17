
def add(a,b)
    our_ages = a + b
end 
 
def run_program
    a = gets.chomp.to_i  
    b = gets.chomp.to_i
    puts add(a,b)
end

our_ages = add(30, 27)
puts our_ages
