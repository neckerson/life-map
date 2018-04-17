require 'csv'

# Create the output file
CSV.open('output.csv', 'w') do |csv|

  # Sort through the input CSV file with headers set to TRUE
  # to make processing a little easier
  CSV.foreach('input.csv', :headers => true) do |row|

    # One of the header cells is blank - make sure it's 
    # removed from the array. The row underneath is not included
    # in the output
    row.headers.compact.each do |header|

      # We're processing cells that are either nil, or have a value.
      # Only the value cells should be written to the output - others
      # can be ignored.
      if row.field(header.to_s) != nil then

        # Write the name and header name to a row, one line at a time
        csv << [ row[0], header.to_s ]
      end
    end
  end
end
