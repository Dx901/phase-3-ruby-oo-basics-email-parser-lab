# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :parse
    def initialize(parse)
        @parse=parse
    end

    def parse
        @parse.split(/,?\s/).uniq
    end
end

#uniq is to see there are no duplicates
#A space delimited email means these are emails that are separated by a
#a literal empty space instead of a comma and it is for that...
#...reason that we will need the regex