module CSVToNam
  module FileWriter
    def self.write_file(filename, payload)
      begin
        file = File.open(filename, 'a:iso-8859-1')
        file.write(payload)
      rescue IOError => e
        puts "Error while writing #{filename}: #{e}."
      ensure
        file.close unless file == nil
      end
    end
  end
end
