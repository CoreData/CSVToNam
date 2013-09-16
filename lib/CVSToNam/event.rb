module CVSToNam
  class Event
    attr_accessor :number, :name, :distance, :category, :heat

    def initialize(number=0, name='', distance='', category='', heat={})
      @number = number
      @name = name
      @distance = distance
      @category = category
      @heat = heat
    end
  end
end