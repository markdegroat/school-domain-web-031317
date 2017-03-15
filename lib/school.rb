# code here!
class School

  attr_reader

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  ROSTER = {}
  # def roster
  #   @roster = {}
  # end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    sorted_roster = @roster
    @roster.each do |key, array|
      sorted_roster[key] = []
      sorted_roster[key] = array.sort
    end
    sorted_roster
  end



end
