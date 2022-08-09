# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_reader :parsed_string
    def initialize(parsed_string)
        @parsed_string = parsed_string
    end
    def parse
        array_of_parsed_string = parsed_string.split(/[\s,]+/)
        array_of_parsed_string_without_dublicates = Array.new
        hash_counter = Hash.new(0)
            array_of_parsed_string.each do |string|
                hash_counter[string] = hash_counter[string] += 1
                puts "#{string} is #{hash_counter[string]}"
                (hash_counter[string] > 1) ? nil : array_of_parsed_string_without_dublicates << string
                array_of_parsed_string_without_dublicates
            end
            array_of_parsed_string_without_dublicates
    end
    def split 
        array_of_parsed_string = parsed_string.split(/[\s,]+/)
    end
end

ar = EmailAddressParser.new("avi@test.com, avi@test.com lector@gmail.com")
print ar.split
puts
print ar.parse