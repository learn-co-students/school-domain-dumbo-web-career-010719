# code here!
require 'pry'


class School
  attr_reader :school_name


  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if @roster.include?(grade)
      @roster[grade].push(student_name)
    else
      @roster[grade] = []
      @roster[grade].push(student_name)
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end
end
