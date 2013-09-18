module CSVToNam
  class Tournament
    attr_accessor :name, :date, :start_time, :events

    def initialize(name, date, events = [])
      @name = name
      @date = Date.parse(date)
      @start_time = Time.parse(date)
      @events = events
    end
  end
end