module CSVToNam
  class Storage
    def initialize
      @storage = Hash.new
      @key = 0
    end

    def add (candidate)
      if self.stored? candidate
        candidate
      else
        @storage[@key] = candidate
        @key += 1
      end
    end

    def list
      @storage.each do |value|
        value
      end
    end

    def stored? (candidate)
      @storage.value? candidate
    end

    def storage_id (candidate)
      @storage.each do |key, value|
        if value == candidate
          return key
        end
      end
    end
  end
end