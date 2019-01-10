require 'pry'
class School
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  def roster
    @roster
  end
  def add_student(student, grade)
    self.roster[grade] ||= []
    self.roster[grade].push(student)
  end
  def grade(grade)
    self.roster[grade]
  end
  def sort
    self.roster.each { |grade_key, students_array|
      students_array.sort!
    }
    self.roster
  end
end
