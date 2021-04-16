# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end
    
    def parse
        deliminaters = [", ", " "]
        new_emails = @emails.split(Regexp.union(deliminaters)) #&& @emails.split(", ")
        new_emails.uniq
    end

end

