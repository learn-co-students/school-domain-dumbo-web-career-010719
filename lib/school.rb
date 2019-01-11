# School = Domain Model context
class School

    attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(student_name, grade)
      roster[grade] ||= []
      roster[grade] << student_name
    end

    # ||= 'or equals'
    def grade(student_grade)
      roster[student_grade]
    end

    def sort
      sorted = {}
      roster.each do |grd, stdt|
        sorted[grd] = stdt.sort
      end
      sorted
    end
end

school = School.new("Bayside High School")
