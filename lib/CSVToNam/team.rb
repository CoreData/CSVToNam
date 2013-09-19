module CSVToNam
  class Team
    attr_accessor :name, :club

    def initialize(name = '', club = '', category = '')
      @name = name
      @club = club
      @category = category
    end
  end
end