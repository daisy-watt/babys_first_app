require_relative "weave_calculator"

def test_1
    a = 22
    b = epi_calculator(a)
    expected = 14

    return b == expected

end 

puts "Test 1: #{test_1()}"