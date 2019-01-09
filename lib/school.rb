class School

  attr_reader :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade_level)
    @roster[grade_level] = [] unless @roster.include?(grade_level)
    if @roster[grade_level].nil?
      @roster[grade_level] = student_name
    else
      @roster[grade_level] << student_name
    end
  end

  def grade(grade_num)
    return @roster[grade_num]
  end

  def sort
    @roster.each do |grade_level, student_names|
      student_names.sort!
    end
  end

end
