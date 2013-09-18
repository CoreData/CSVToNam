module CSVToNam
  class FileWriter
    attr_accessor :filename, :payload

    def initialize(filename, payload)
      @filename = filename
      @payload = payload

      @scoreboard_dir = '_SCOREBOARD_'
      @ares_dir = '_Ares_'

      Dir.mkdir(@scoreboard_dir) unless File.exists? @scoreboard_dir
      Dir.mkdir(@ares_dir) unless File.exists? @ares_dir

      if @filename == 'STEUER.TXT' || @filename.match('NAM')
        @filename = @scoreboard_dir << '/' << @filename
      elsif @filename.match('LST')
        @filename = @ares_dir << '/' << @filename
      else
        raise "We can't handle this filename."
      end

      self.write_file
    end

    def write_file
      begin
        file = File.open(@filename, 'a:iso-8859-1')
        file.write(@payload)
      rescue IOError => e
        puts "Error while writing #{@filename}: #{e}."
      ensure
        file.close unless file == nil
      end
    end
  end
end