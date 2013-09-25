module CSVToNam
  module CSVReader
    def self.read_csv(filename)
      begin
        payload = CSV.read(filename, :col_sep => ',', :encoding => 'iso-8859-1:UTF-8')
      rescue IOError => e
        puts "Error while reading #{filename}: #{e}."
      end
      return payload
    end
  end
end