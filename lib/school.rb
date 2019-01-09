# code here!
class School
  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new { |h, k| h[k] = [] }
  end
  attr_accessor :school_name, :roster
  
  def add_student(name, grade)
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end
end