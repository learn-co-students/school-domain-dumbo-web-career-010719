# code here!

class School
    def initialize(name)
        @name = name
        @hash = {}
    end

    def roster
        @hash
    end

    def add_student(name, grade)
        if @hash.has_key?(grade) == false
            @hash[grade] = []
            @hash[grade] << name
        else
            @hash[grade] << name
        end
    end

    def grade(int)
        @hash[int]
    end

    def sort
        @hash.each do |x,y|
            @hash[x] = y.sort
        end
        @hash.sort.to_h
        
    end
    
end

school = School.new("Bayside High School")