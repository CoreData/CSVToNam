module CSVToNam
  class CSVReader
    attr_reader :payload

    def initialize(filename)
      @filename = filename
      self.read_csv
      return @payload
    end

    def read_csv
      begin
        @payload = CSV.read(@filename, :col_sep => ',', :encoding => 'iso-8859-1:UTF-8')
      rescue IOError => e
        puts "Error while reading #{@filename}: #{e}."
      end
    end
    @payload
  end
end
