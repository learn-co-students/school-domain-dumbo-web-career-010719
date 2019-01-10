class School
  def initialize(name)
    @school_name = name
    @roster = {}
  end
  attr_reader :school_name
  attr_reader :roster

  def add_student(name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    num = 0
    new_hash = {}
    while num <=10
      if @roster.has_key?(num)
        new_hash[num] = @roster[num]
        new_hash[num].sort!
      end
      num+=1
  end
  @roster = new_hash
end
end
