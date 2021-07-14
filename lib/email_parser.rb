# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email_addresses

    def initialize(email_addresses)
        self.email_addresses = email_addresses
    end

    def parse()
        array = self.email_addresses.split
        array = array.map do |email_address|
            email_address[-1] == "," ? email_address[0..-2] : email_address
        end
        array.uniq
    end
end