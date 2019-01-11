require 'pry'

class School
  # attr_reader :@name
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
    # binding.pry
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sort_hash = {}
    roster.each do |grade, student|
      sort_hash[grade] = student.sort
    end
    sort_hash
  end
end
