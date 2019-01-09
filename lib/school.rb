# code here!
class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end



  def add_student(student_name, grade)
    if @roster[grade] == nil
       @roster[grade] = []
       @roster[grade] << student_name
     else
       @roster[grade] << student_name
     end
  end

  def grade(num)
    return @roster[num]
  end

  def sort
    @roster.each do |key, value|
    sorted_values = value.sort
    @roster[key] = sorted_values
    end
  end

end
