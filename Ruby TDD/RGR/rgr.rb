class Project
  # def name= name
  #   @name = "Name"
  # end

  # def name
  #   @name
  # end

  # def description= description
  #   @description = "Description"
  # end

  # def description
  #   @description
  # end

  # def elevator_pitch
  #   "#{@name}, #{@description}"
  # end

  # REFACTORED

  attr_accessor :name, :description

  def name
    @name = "Name"
  end

  def description
    @description = "Description"
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end
end