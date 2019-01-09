# code here!
class School
    attr_accessor :roster

    def initialize(name)
        @name=name
        @roster=Hash.new {|key, value| key[value]=[]}
    end

    def add_student(name, num)
        @roster[num]<<name
    end

    def grade(num)
        result=[]
        @roster.each do |key, value|
            if key==num
                value.each do |student|
                    result<<student
                end
            end
        end
        result
    end

    def sort
            result={}
            @roster.map do |key, value|
                     result[key]=value.sort
            end
            result
    end

end