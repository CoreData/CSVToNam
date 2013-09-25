module CSVToNam
  module Individual
    # TODO implement code to handle csv files for individual competitions
    def self.processor(payload)
      p payload
    end

    # This method handles an individual final competition.
    # The CSV file for this setting misses the "categories" line (line 3).
    def self.final
      puts "#{self}.#{__method__} was called!"
    end
  end
end