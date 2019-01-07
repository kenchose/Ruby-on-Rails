class Project
  attr_accessor :name, :description, :owner, :tasks
  def initialize (name, description, owner, agenda)
    @name = name
    @description = description
    @owner = owner
    @tasks = agenda
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end

  def owner
    "#{@owner}"
  end

  def tasks
    task = Array.new(@tasks)
    task.each {|elem| puts elem}
  end

  def add_task
    task = Array.new(@tasks)
    add_new_task = "study"
    task << add_new_task
  end

  def get_set
    @owner = "New Owner"
  end
end
