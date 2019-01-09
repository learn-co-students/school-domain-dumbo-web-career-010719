# code here!
class School
  
   attr_reader :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if roster.key?(grade) == false
      roster[grade] = []
    end
    roster[grade].push(student_name)
  end
  
  def grade(num)
    return @roster[num]
  end
  
  def sort
    @roster.each do |grade, arr|
      roster[grade] = arr.sort
    end
    @roster
  end

end