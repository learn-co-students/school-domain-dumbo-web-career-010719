# code here!

class School
  attr_accessor :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end
  # check if the roster already has the key of the grade
  # if it does then u push the new name into the exisiting array
  # else create the grade key and point it to an empty arr
  # However, if we're in the scenario in which the grade 9 key already exists,
  # we will erase its current contents by creating a key of 9 and setting it equal to an empty array!
  def add_student(student,grade)
    if @roster.include?(grade)
      @roster[grade].push(student)
    else
      @roster[grade]= []
      @roster[grade].push(student)
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort()
    @roster.each do |grade,names|
        names.sort!
    end
  end

end
