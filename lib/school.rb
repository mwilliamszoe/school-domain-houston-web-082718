require'pry'

class School

  @@roster = {}

  def initialize(name)
    @name = name
    # @roster = {}
  end

  def roster
    @@roster
  end

  def add_student(name, grade)
    if self.roster[grade]
      #binding.pry
      self.roster[grade] << name
      #self.roster[9] = 'mike'
      # that creates {9: ['some name','mike']}
    else
      self.roster[grade] = [name]
      #{6:['name','other name'], 9:['mike']}
    end
  end

  def grade(grade)
    self.roster[grade]
  end

end

# school = School.new("my school")
# school.add_student("mike", 9)
# A method, grade, should take in an argument of a grade and
# return all of the students in that grade:

# school.grade(9)
# => ["Zach Morris", "AC Slater"]
