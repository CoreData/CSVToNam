module CSVToNam
  module Individual
    # TODO implement code to handle csv files for individual competitions
    def self.was_called
      puts "#{self} was called!"
    end

    # This method handles an individual final competition.
    # The CSV file for this setting misses the "categories" line (line 3).
    def self.final
      puts "#{self} was called!"
    end
  end
end