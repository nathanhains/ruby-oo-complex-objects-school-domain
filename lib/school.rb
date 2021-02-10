class School
   
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
            if @roster.key?(grade)
                @roster[grade] << student_name
            else
                @roster[grade] = []
                @roster[grade] << student_name
            end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.collect do |grade, students|
            students = students.sort
            @roster[grade] = students
        end
        @roster 
    end


end