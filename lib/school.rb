class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, num)
    if !(self.roster.has_key?(num))
      self.roster[num] = []
    end
    self.roster[num] << name
  end

  def grade(num)
    self.roster[num]
  end

  def sort
    self.roster.sort.to_h.map do |grade, students|
      students.sort!
    end
    self.roster
  end

end
