# code here!
require 'pry'
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name

    # if roster[grade] == nil
    #   #binding.pry
    #   roster[grade] = []
    #   roster[grade] << name
    # else
    #   roster[grade] << name
    # end

  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each {|grade, students|
      students.sort!
    }
  end
end
