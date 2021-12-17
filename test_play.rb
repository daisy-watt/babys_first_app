require_relative "play"

def test_1
    a = 2
    b = 3
    c = add(a,b)
    expected = 5

    return c == expected
end

puts "Test 1: #{test_1}"