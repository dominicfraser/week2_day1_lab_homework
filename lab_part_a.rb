class Student

  def initialize(s_name, cohort)
    @s_name = s_name
    @cohort = cohort
  end

def s_name
  return @s_name
end

def change_s_name(new_name)
  @s_name = new_name
end



end