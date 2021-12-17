require "tty-prompt"
require "tty-editor"
require "paint"
require "colorize"
prompt = TTY::Prompt.new

def decipher_weave
    puts "I wasnt gonna make it that easy for you to decipher the secret messages...".green
    puts "
    _________________
    |# :           : #|
    |  : cipher    :  |
    |  :  missing  :  |
    |  :           :  |
    |  :___________:  |
    |     _________   |
    |    | __      |  |
    |    ||  |     |  |
     \____||__|_____|__|
     
     404 not found lol".green
end

# require "json"

# structure_file_string_test = File.read('./checker_structure.json')
# structure_hash_test = JSON.parse(structure_file_string_test)

# index = 0
# while index < structure_file_string_test.keys.length
#     key = structure_file_string_test.keys[index]
#     value = structure_file_string_test.values[index]

#     if value == value
#         puts value
#     end

# index = index + 1
# end 
