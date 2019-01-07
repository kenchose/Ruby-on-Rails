# require_relative 'project' # include our Project class in our spec file
# RSpec.describe Project do  
#   before(:each) do 
#     @project1 = Project.new('Project 1', 'description 1') # create a new project and make sure we can set the name attribute
#   end
#   it 'has a getter and setter for name attribute' do
#     @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
#     expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
#   end 
# end
require_relative 'project'
RSpec.describe Project do
  before(:each) do
    # updated this block to create two projects
    @project1 = Project.new('Project 1', 'description 1')
    @project2 = Project.new('Project 2', 'description 2', 'Kenny')
    @project3 = Project.new('Project 3', 'description 3', 'Kenny', ["milk", "groceries", 6 , "dog food"])
  end
    # Code from the previous tab removed for brevity. Leave it in.
  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
  end

  it 'has a method owner to explain the owner' do
    expect(@project2.owner).to eq("Kenny")
  end

  it 'returns the elements in an array' do
    expect(@project3.tasks).to eq(['milk', 'groceries', 6 , 'dog food'])
  end

  it 'pushes a single task to the task attribute' do
    expect(@project3.add_task).to eq(["milk", "groceries", 6 , "dog food", "study"])
  # end

  it 'attribute has a getter and setter' do
    expect(@project3.get_set).to eq("New Owner")
  end
end