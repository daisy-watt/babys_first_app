require_relative "weave_calculator"

def test_1
    a = 22
    b = epi_calculator(a)
    expected = 14

    return b == expected

end 



def test_2
    a = 2
    b = 2
    c = total_ends_calculator(a,b)
    expected = 4

    return c == expected 

end
