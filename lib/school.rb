# code here!
require 'pry'
class School
  attr_accessor :name, :roster
  # attr_reader :student

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student,grades)
    @roster[grades] ||= []
    @roster[grades] << student
  end

  def grade(grade)
    @roster.each do |x, y|
       if grade == x
         return y
       end
     end
  end

  def sort
    @roster.each_value{ |k| k.sort!  }

  end
end
