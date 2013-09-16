module CVSToNam
  class Swimmer
    attr_accessor :first_name, :last_name, :club, :category
    attr_reader :birth_year

    def initialize(first_name = '', last_name = '', club = '', category = '')
      @first_name = first_name
      @last_name = last_name
      @club = club
      @category = category
      @birth_year = '1990'
    end
  end
end